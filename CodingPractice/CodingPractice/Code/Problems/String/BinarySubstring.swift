//
//  BinarySubstring.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/30/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct BinarySubstring {
    
    func countBinarySubstrings(_ s: String) -> Int {
        let array = s.compactMap{Int(String($0))}
        var finalArray = [[Int]]()
        var counter = 0
        for i in 0..<array.count {
            counter = i + 1
            while (counter < array.count) {
                let new = Array(array[i...counter])
                let mid = (new.count-1)/2
                let sub1 = new[0...mid]
                let sub2 = new[mid+1..<new.count]
                let sub1Total = sub1.reduce(0, +)
                let sub2Total = sub2.reduce(0, +)
                if (sub1Total == 0 && sub1.count == sub2Total) || (sub2Total == 0 && sub2.count == sub1Total) {
                    finalArray.append(new)
                }
                counter += 2
            }
        }
        
        return finalArray.count
    }
    
    static func run() {
        let obj = BinarySubstring()
        print(obj.countBinarySubstrings("10101"))
        print(obj.countBinarySubstrings("00110011"))
        print(obj.countBinarySubstrings("000111000"))
    }
}
