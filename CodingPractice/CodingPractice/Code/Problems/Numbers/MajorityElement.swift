//
//  MajorityElement.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/9/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct MajorityElement {
    
    func majorityElement(_ nums: [Int]) -> Int {
        
        let dict = nums.reduce(into: [:]) { (dict, num) in
            dict[num, default: 0] += 1
        }
        
        let value = dict.first { $0.value > nums.count/2 }
        return value?.key ?? -1
    }

    static func run() {
        let obj = MajorityElement()
        let nums = [2,2,1,1,1,2,2]
        let value = obj.majorityElement(nums)
        print(value)
    }
}
