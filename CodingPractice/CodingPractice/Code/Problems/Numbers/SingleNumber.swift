//
//  SingleNumber.swift
//  CodingPractivde
//
//  Created by Kanwar Zorawar Singh Rana on 7/8/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct SingleNumber {
    
    private func findSingleNumber(fromArray numbers: [Int]) -> Int {
        
        let number = numbers.reduce(into: [:]) { (dict, value) in
            dict[value, default: 0] += 1
        }.first { $0.value == 1}
        return number?.key ?? -1
    }
    
    private func findMultipleSingleNumber(fromArray numbers: [Int]) -> [Int] {
        
        let dict = numbers.reduce(into: [:]) { (dict, value) in
            dict[value, default: 0] += 1
            }
        let numbers = dict.filter { $0.value == 1}
        return Array(numbers.keys)
    }
    
    static func run(){
        let obj = SingleNumber()
        let value = obj.findSingleNumber(fromArray: [4,2,1,2,1,3,4,5])
        print(value)
        let value2 = obj.findMultipleSingleNumber(fromArray: [4,2,1,2,1,3,4,5,6])
        print(value2)
    }
    
}
