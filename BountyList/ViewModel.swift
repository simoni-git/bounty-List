//
//  ViewModel.swift
//  BountyList
//
//  Created by MAC on 11/27/23.
//

import Foundation

class ViewModel {
    
    let bountyInfos: [BountInfo] = [
        BountInfo(name: "brook", bount: 3300000),
        BountInfo(name: "chopper", bount: 50),
        BountInfo(name: "franky", bount: 4400000),
        BountInfo(name: "luffy", bount: 30000000),
        BountInfo(name: "nami", bount: 1600000),
        BountInfo(name: "robin", bount: 80000000),
        BountInfo(name: "sanji", bount: 7700000),
        BountInfo(name: "zoro", bount: 120000000)
    ]
    
    var numberOfBountyInfos: Int {
        return bountyInfos.count
    }
    
}
