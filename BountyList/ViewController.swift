//
//  ViewController.swift
//  BountyList
//
//  Created by MAC on 2023/04/03.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let nameList = ["brook" , "chopper" , "franky" , "luffy" , "nami" , "robin" , "sanji" , "zoro"]
    let bountyList = [3300000 , 50 , 4400000 , 30000000 , 1600000 , 80000000 , 7700000 , 120000000]
    // 아래 prepare 메소드는 뷰디드로드하고나서 세그웨이를 수행하기전에 세그웨이를 준비하는 매서드
    // override를 쓴 이유는 이메서드는 uiviewcontroller에 속해있는 함수인데 여기서 다시한번 사용하니까
    // override를 써준거임.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // 디테일뷰컨트롤에게 데이터를 줄꺼임.
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            if let index = sender as? Int {
                vc?.name = nameList[index]
                vc?.bounty = bountyList[index]
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

// 테이블뷰데이터소스와 델리게이트에대한 대답을 해줌
    // uitableviewdatasourc
    // 셀이 몇개니?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bountyList.count
    }
    // 어떻게 표현할꺼니?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        
        let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
        cell.imgView.image = img
        cell.nameLable.text = nameList[indexPath.row]
        cell.bountyLable.text = "\(bountyList[indexPath.row])"
        return cell
        
    }
    
    
    
    // UITableViewDelegate= 클릭했을때 어떻게할꺼야?
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("-->\(indexPath.row)")
        //아래 performsegue 메소드가 연결한한세그웨이를 수행해라 라는 메서드.
        //withIdentifier 에는 아까 세그웨이이름을 지정해준 showDetail을 넣으면됨
    
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }
}

class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var bountyLable: UILabel!
}

