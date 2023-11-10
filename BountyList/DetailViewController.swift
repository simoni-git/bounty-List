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

    var name: String?
    var bounty: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

      
    }
    
    func updateUI() {
        if let name = self.name , let bounty = self.bounty {
            let img = UIImage(named: "\(name).jpg")
            imgView.image = img
            nameLable.text = name
            bountyLable.text = "\(bounty)"
        }
    }
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true , completion: nil)
        // dismiss가 화면을사라지게하는메소드 , completion은 화면이사라지고나서 무언가의 액션을 추가할때사용함.
    }
    
 

}
