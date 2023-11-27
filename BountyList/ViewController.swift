//
//  ViewController.swift
//  BountyList
//
//  Created by MAC on 2023/04/03.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let viewModel = ViewModel()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            if let index = sender as? Int {
               
                let bountyinfo = viewModel.bountyInfos[index]
                vc?.viewmodel.update(model: bountyinfo)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfBountyInfos
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        let bountyinfo = viewModel.bountyInfos[indexPath.row]
        cell.update(info: bountyinfo)
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("-->\(indexPath.row)")
    
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }
}

class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var bountyLable: UILabel!
    
    func update(info: BountInfo) {
        imgView.image = info.image
        nameLable.text = info.name
        bountyLable.text = "\(info.bount)"
    }
}

