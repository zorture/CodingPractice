//
//  ArrayRotation.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/10/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct ArrayRotation {
    
    func rotLeftQuick(a: [Int], d: Int) -> [Int] {
        var ar = a
        var temp = 0
        for _ in 0..<d {
            temp = ar.first!
            for i in 0..<ar.count-1 {
                ar[i] = ar[i+1]
            }
            ar[ar.count-1] = temp
        }
        return ar
    }
    
    func rotLeft(a: [Int], d: Int) -> [Int] {
        
        let gcd = getGCD(num1: d, num2: a.count)
        var arr = a
        let n = a.count
        for i in 0..<gcd {
            /* move i-th values of blocks */
            let temp = arr[i];
            var j = i;
            
            while (true) {
                var k = j + d
                if (k >= n) {
                    k = k - n
                }
                
                if (k == i) {
                    break
                }
                
                arr[j] = arr[k];
                j = k;
            }
            arr[j] = temp;
        }
        return arr
    }
    
    func getGCD(num1: Int, num2: Int) -> Int {
        if num2 == 0 {
            return num1
        } else {
            return getGCD(num1:num2, num2:num1 % num2)
        }
    }
    
    func findGCD(array: [Int])-> Int {
        var result = array.first ?? 1;
        for num in array {
            result = getGCD(num1: num, num2: result)
        }
        
        return result;
    }
    
    static func run() {
        let obj = ArrayRotation()
        print(obj.rotLeftQuick(a: [1,2,3,4,5,6,7], d: 3))
        print(obj.rotLeft(a: [1,2,3,4,5,6,7], d: 3))
        print(obj.findGCD(array: [2,4,6,8,10]))
        print(obj.findGCD(array: [2,3,4,5,6]))
    }
}
