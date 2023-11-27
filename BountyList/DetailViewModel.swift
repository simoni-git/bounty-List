//
//  DetailViewModel.swift
//  BountyList
//
//  Created by MAC on 11/27/23.
//

import Foundation
class DetailViewModel {
    var bountyinfo: BountInfo?
    
     func update(model: BountInfo?) {
         bountyinfo = model
    }
}
