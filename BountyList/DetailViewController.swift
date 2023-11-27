//
//  DetailViewController.swift
//  BountyList
//
//  Created by MAC on 2023/04/03.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var bountyLable: UILabel!
    
    let viewmodel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        
        if let bountyinfo = viewmodel.bountyinfo{
            imgView.image = bountyinfo.image
            nameLable.text = bountyinfo.name
            bountyLable.text = "\(bountyinfo.bount)"
        }
    }
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true , completion: nil)
    }
    
}
