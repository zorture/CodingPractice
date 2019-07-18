//
//  KSubSequence.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/15/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct KSubSequence{
    
    func subSequence(forArray array: [Int], forK k: Int) -> Int {
        var counter = 0
        var array = array
        var subArray = [Int]()
        for _ in 0..<array.count{
            for i in 0..<array.count {
                subArray.append(array[i])
                let val = subArray.reduce(0, { $0 + $1 })
                if val % k == 0 {
                    counter += 1
                }
            }
            array.remove(at: 0)
            subArray.removeAll()
        }
        
        return counter
    }
    
    static func run() {
        let obj = KSubSequence()
        print(obj.subSequence(forArray: [5, 10, 11, 9, 5], forK: 5))
    }
}
