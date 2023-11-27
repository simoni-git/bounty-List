//
//  Model.swift
//  BountyList
//
//  Created by MAC on 11/27/23.
//
import UIKit
import Foundation

struct BountInfo {
    var name: String
    var bount: Int
   
    var image: UIImage? {
        return UIImage(named: "\(name).jpg")
    }
    init(name: String, bount: Int) {
        self.name = name
        self.bount = bount
    }
}
