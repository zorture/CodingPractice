//
//  ValidPalindrome.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/9/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct ValidPalindrome {
    
    func isPalindrome(_ s: String) -> Bool {
        let characterSet = Set("abcdefghijklmnopqrstuvwxyz0123456789")
        var str = s.lowercased()
        str = str.filter{ characterSet.contains($0) }
        str = str.replacingOccurrences(of: "", with: "")
        let strRev = String(str.reversed())
        if str == strRev {
            return true
        }
        return false
    }
    
    static func run() {
        let obj = ValidPalindrome()
        let val = obj.isPalindrome("0P")
        print(val)
    }
}
