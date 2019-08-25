//
//  TripletSubsequence.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/19/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//
//https://leetcode.com/problems/increasing-triplet-subsequence/
//https://www.geeksforgeeks.org/longest-increasing-subarray/

import Foundation

struct TripletSubsequence {
    
    func increasingTriplet(_ nums: [Int]) -> Bool {
        
        var num1 = Int.max
        var num2 = Int.max
        
        for num in nums {
            if num < num1 {
                num1 = num
            }
            
            if num > num1 {
               num2 = min(num, num2)
            }
            
            if num > num2 {
                return true
            }
            print(num1,num2)
        }
        return false
    }
    
    static func run() {
        let obj = TripletSubsequence()
        print(obj.increasingTriplet([5,1,5,5,2,5,4]))
        print(obj.increasingTriplet([1,2,-10,-8,-7]))
        print(obj.increasingTriplet([2,1,5,0,4,6]))
        print(obj.increasingTriplet([5,4,3,2,1]))
        print(obj.increasingTriplet([5,4,1,2,3]))
        print(obj.increasingTriplet([2,4,-1,2,3]))
        print(obj.increasingTriplet([1]))
        
    }
}
