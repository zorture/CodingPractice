//
//  Subsets.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/5/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct Subsets {
    
    func subsets(_ nums: [Int]) -> [[Int]] {
        var resultArray = [[Int]]()

        
        for i in 0..<nums.count {
            if i > 0{
                var tempSet = Set<Int>()
                tempSet.insert(nums[i])
                let set = Set(resultArray)
                for s in set {
                    let newSet = tempSet.union(s)
                    resultArray.append(Array(newSet))
                }
            }
           resultArray.append([nums[i]])
        }
        
        resultArray.append([])
        return resultArray
    }
    
    static func run() {
        let obj = Subsets()
        print(obj.subsets([1,2,3]))
    }
}
