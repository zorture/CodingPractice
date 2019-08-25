//
//  PalindromePartitioning.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/14/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

#warning("not Copleted")
import Foundation

struct PalindromePartitioning {
    
    func partition(_ s: String) -> [[String]] {
        var finalArray = [String]()
        
        var tempStr = ""
        let array = Array(s)
        for i in 0..<array.count {
            let char = array[i]
            tempStr.insert(char, at: tempStr.startIndex)
            let subStr = substring(forString: s, offsetBy: i+1)
            if tempStr == subStr {
                finalArray.append(tempStr)
            }
        }
        return [["a"]]
    }
    
    func substring(forString string: String, offsetBy offset: Int) -> String {
        let index = string.index(string.startIndex, offsetBy: offset)
        let substring = string[..<index]
        return String(substring)
    }
    
    static func run() {
        let str = "Hello, playground"
        let index = str.index(str.startIndex, offsetBy: 5)
        let mySubstring = str[..<index]
        print(mySubstring)
        
        let obj = PalindromePartitioning()
        print(obj.partition("abcbabbcbbcbaabc"))
    }
}
