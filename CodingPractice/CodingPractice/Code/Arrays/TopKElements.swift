//
//  TopKElements.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/5/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Cocoa

struct TopKElements {

    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        
        let dict = nums.reduce(into: [:]) { (dict, num) in
            dict[num, default: 0] += 1
        }
        
        var sortedAr = dict.sorted { $0.value > $1.value }
        let minCount = sortedAr[k-1].value
        let finalAr = dict.filter { $0.value >= minCount}
        return Array(finalAr.keys)
    }
    
    static func run() {
        let obj = TopKElements()
        print(obj.topKFrequent([1,2,1,2,1,3], 2))
        print(obj.topKFrequent([1,2,1,2,1,5,2,3,4,5,6,1,5,3,7,8,9,7,5,1,3,5,2,3,7,1], 4))
    }
}
