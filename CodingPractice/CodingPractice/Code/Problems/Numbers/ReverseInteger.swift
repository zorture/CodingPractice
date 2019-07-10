//
//  ReverseInteger.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/9/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct ReverseInteger {
    
    func reverse(_ x: Int) -> Int {
        let isNegative = x < 0 ? true : false
        var revNum = 0
        var num = abs(x)
        while num > 0 {
            revNum = revNum*10 + num%10
            num = num/10
        }
        revNum = isNegative ? revNum*(-1) : revNum
        if revNum > 2147483647 || revNum < -2147483647 {
            return 0
        }
        return revNum
    }
    
    static func run() {
        let obj = ReverseInteger()
        print(obj.reverse(120))
        print(obj.reverse(-123))
        print(obj.reverse(1534236469
))
    
    }
}
