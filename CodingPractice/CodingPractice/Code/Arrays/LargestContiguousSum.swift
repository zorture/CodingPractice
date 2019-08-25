//
//  LargestContiguousSum.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/19/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct LargestContiguousSum {

    
    func largestSum(forArray array: [Int]) -> Int {
        var maxSum = Int.min
        var currentSum = 0
        
        for i in 0..<array.count {
            currentSum += array[i]
            if maxSum < currentSum {
                maxSum = currentSum
            }
            
            if currentSum < 0 {
                currentSum = 0
            }
        }
        
        return maxSum
    }
    
    static func run() {
        let obj = LargestContiguousSum()
        print(obj.largestSum(forArray: [2,-10,11,3,4,-5,1]))
        print(obj.largestSum(forArray: [-2, -3, 4, -1, -2, 1, 5, -3]))
    }
}
