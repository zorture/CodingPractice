//
//  PeakElement.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/14/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct PeakElement {
    
    func findPeakElement(_ nums: [Int]) -> Int {
        var peekIndex = 0
        for i in 0..<nums.count {
            var leftNo = Int.min
            let currentNo = nums[i]
            var rightNo = Int.min
            if i > 0 {
                leftNo = nums[i-1]
            }
            if i < nums.count-1 {
                rightNo = nums[i+1]
            }
            
            if currentNo > leftNo && currentNo > rightNo {
                peekIndex = i
                break
            }
        }
        return peekIndex
    }
    
    static func run() {
        let obj = PeakElement()
        print(obj.findPeakElement([1]))
        print(obj.findPeakElement([1,2,3,1]))
        print(obj.findPeakElement([1,2,1,3,5,6,4]))
        print(obj.findPeakElement([1,2,2,3,5,6,4]))
    }
}
