//
//  ContainsDuplicate.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/9/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct ContainsDuplicate {
    
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        let dict = nums.reduce(into: [:]) { (dict, num) in
            dict[num, default: 0] += 1
        }
        
        if dict.first(where: { $0.value > 1 }) != nil {
            return true
        }
        return false
    }
    
    static func run() {
        let obj = ContainsDuplicate()
        let nums = [1,2,3,4,5]
        let value = obj.containsDuplicate(nums)
        print(value)
    }
}
