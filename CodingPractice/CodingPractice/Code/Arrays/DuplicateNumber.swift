//
//  DuplicateNumber.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/7/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct DuplicateNumber {
    
    func findDuplicate(_ nums: [Int]) -> Int {
        let dict = nums.reduce(into: [:]) { (dict, num) in
            dict[num, default: 0] += 1
        }
        return dict.first { $0.value > 1 }?.key ?? 0
    }
    
    static func run() {
        let obj = DuplicateNumber()
        print(obj.findDuplicate([1,3,4,2,2]))
        print(obj.findDuplicate([2,2,2,2]))
    }
}
