//
//  GroupAnagrams.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/12/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct GroupAnagrams {
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [String: [String]]()
        for str in strs {
            //print(str,hexValue(forString: str))
            let val = hexValue(forString: str)
            if dict[val] == nil {
                dict[val] = [str]
            } else {
                var ar = dict[val]
                ar?.append(str)
                dict[val] = ar
            }
        }
        return Array(dict.values)
    }
    
    func hexValue(forString string: String) -> String {
        var val:String = ""
       val = String(Array(string).sorted())
        return val
    }
    
    static func run() {
        let obj = GroupAnagrams()
        print(obj.groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]))
        print(obj.groupAnagrams(["duh","ill"]))
    }
}
