//
//  MissingNumber.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/7/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct MissingNumber {
    
    func missingNumber(_ nums: [Int]) -> Int {
        let max = nums.count
        let sum  =  (max*(max+1))/2
        let missingNo = sum - nums.reduce(0, +)
        return missingNo
    }
    
    static func run() {
        let obj = MissingNumber()
        print(obj.missingNumber([9,6,4,2,3,5,7,0,1]))
        print(obj.missingNumber([0]))
        print(obj.missingNumber([1]))
    }
}
