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
        let dict1 = s.reduce(into: [:]) { (dict, char) in
            dict[char, default: 0] += 1
        }
        
        let dict2 = t.reduce(into: [:]) { (dict, char) in
            dict[char, default: 0] += 1
        }
        
        return dict1 ==  dict2
    }
    
    static func run(){
        let obj = ValidAnagram()
        let index = obj.isAnagram("a", "ab")
        print("\(String(describing: index))")
    }
}
