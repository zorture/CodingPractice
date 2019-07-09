//
//  ReverseString.swift
//  CodingPractivde
//
//  Created by Kanwar Zorawar Singh Rana on 7/8/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct ReverseString {
    
    private func reverse(_ string: inout [Character]) -> [Character] {
        var k = string.count-1
        let maxIttr = (string.count-1)/2
        for i in 0...maxIttr {
            let temp = string[i]
            string[i] = string[k]
            string[k] = temp
            k -= 1
        }
        return string
    }
    
    static func run(){
        let obj = ReverseString()
        var string = Array("abcdefghijklmnopqrstuvwxyz1234567890abcdefghijklmnopqrstuvwxyz")
        let value = obj.reverse(&string)
        print(value)
    }
}
