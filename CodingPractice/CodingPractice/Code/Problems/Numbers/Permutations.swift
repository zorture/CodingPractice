//
//  Permutations.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/9/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct Permutations {
    func permute(_ nums: [Int]) -> [[Int]] {
        var finalArray = [[Int]]()
        
        var dict = nums.reduce(into: [:]) { (dict, num) in
            dict[num, default: 0] += 1
        }
        let ar = [Int]()
        permutation(nums: nums, countAr: Array(dict.values), result: ar, level: 0, finalArray: &finalArray)
        
        return finalArray
    }
    
    func permutation(nums: [Int], countAr: [Int], result: [Int], level: Int, finalArray: inout [[Int]]){
        
        var result = result
        var countAr = countAr
        if level == nums.count{
            finalArray.append(result)
            return
        }

        for i in 0..<nums.count{
            if countAr[i] == 0{
                continue
            }
            
            result.append(nums[i])
            countAr[i] -= 1
            permutation(nums: nums, countAr: countAr, result: result, level: level + 1, finalArray: &finalArray)
            countAr[i] += 1
            result.removeLast()
        }
        
    }
    
    static func run() {
        let obj = Permutations()
        let val = obj.permute([1,2,3])
        print(val)
    }
}
