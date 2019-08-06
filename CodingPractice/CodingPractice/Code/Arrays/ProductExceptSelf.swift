//
//  ProductExceptSelf.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/5/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct ProductExceptSelf {
    

    
    func productExceptSelf1(_ nums: [Int]) -> [Int] {
        
        let dict = nums.reduce(into: [:]) { (dict, num) in
            dict[num, default: 0] += 1
        }
        
        var finalAr = [Int]()
        for element in nums {
            var tempDict = dict
            if var val = tempDict[element] {
                val -= 1
                if val > 0 {
                tempDict[element] =   val
                } else {
                    tempDict.removeValue(forKey: element)
                }
            }
            var count = 1
            for dict in tempDict {
                let prod = pow(Double(dict.key), Double(dict.value))
                count *= Int(prod)
            }
            finalAr.append(count)
        }
        
        return finalAr
    }
    
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        
        var finalAr = [Int]()
        let product = nums.reduce(1, *)
        for num in nums {
            var result = 1
            if num != 0 {
                result = product/num
            } else if product == 0 {
                
            }
            finalAr.append(result)
        }
        return finalAr
    }
    
    static func run() {
        let obj = ProductExceptSelf()
        //print(obj.productExceptSelf([5,9,2,-9,-9,-7,-8,7,-9,10]))
//        print(obj.productExceptSelf([1,2,3,4]))
          print(obj.productExceptSelf([0,0]))
//        print(obj.productExceptSelf([1,0]))
//        print(obj.productExceptSelf([1,1]))
    }
}
