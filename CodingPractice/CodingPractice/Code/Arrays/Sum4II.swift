//
//  Sum4II.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/6/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//
#warning("WOP")
import Foundation

struct Sum4II {
    
    func fourSumCount(_ A: [Int], _ B: [Int], _ C: [Int], _ D: [Int]) -> Int {
        var counter = 0
        
        for a in A{
            for b in B{
                for c in C{
                    for d in D{
                        if a+b+c+d == 0 {
                            counter += 1
                        }
                    }
                }
            }
        }
        
        return counter
    }
    
    static func run() {
        let obj = Sum4II()
        print(obj.fourSumCount([1,2], [-2,-1], [-1,2], [0,2]))
    }
    
}
