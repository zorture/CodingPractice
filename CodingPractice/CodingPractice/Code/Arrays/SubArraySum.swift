//
//  SubArraySum.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/19/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//
// https://www.geeksforgeeks.org/longest-sub-array-sum-k/
import Foundation

struct SubArraySum {
    
    func longestSubArray(inArray array: [Int], withSum sum: Int) -> (Int, [Int]){
        var currentSum = 0
        var maxLength = 0
        var startloc = 0
        var endLoc = 0
        var dict = [Int:Int]()
        
        for i in 0..<array.count {
            currentSum += array[i]
            
            if currentSum == sum {
                maxLength = i
                startloc = maxLength
            }
            
            if dict[currentSum] == nil {
                dict[currentSum] = i
            }

            if dict[currentSum - sum] != nil {
                let newLoc = i - dict[currentSum - sum]!
                if maxLength < newLoc {
                    maxLength = newLoc
                    endLoc = newLoc
                }
            }
        }
        
        let array = startloc < endLoc ?
            Array(array[startloc...endLoc]) :
            Array(array[endLoc...startloc])
        
        return (array.count, array)
    }
    
    static func run() {
        let obj = SubArraySum()
        print(obj.longestSubArray(inArray: [10, 5, 2, 7, 1, 9], withSum: 15))
        print(obj.longestSubArray(inArray: [10, 5, 2, 3, 4, 9], withSum: 15))
        print(obj.longestSubArray(inArray: [10, 5, 2, 7, 1, 2,5], withSum: 17))
        print(obj.longestSubArray(inArray: [10, 5, 2, 2, 1, 2,5], withSum: 17))
        print(obj.longestSubArray(inArray: [10, 5, 2, 2, 1, 2,1], withSum: 17))
        print(obj.longestSubArray(inArray: [-5, 8, -14, 2, 4, 12], withSum: -5))
        
    }
}
