//
//  ValidAnagram.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/9/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct ValidAnagram {
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        return t.contains(s)
        
    }
    
    static func run(){
        let obj = ValidAnagram()
        let index = obj.isAnagram("anagram", "nanagram")
        print("\(String(describing: index))")
    }
}
