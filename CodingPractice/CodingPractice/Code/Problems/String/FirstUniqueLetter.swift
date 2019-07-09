
//
//  FirstUniqueCharacter.swift
//  CodingPractivde
//
//  Created by Kanwar Zorawar Singh Rana on 7/8/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation


struct FirstUniqueCharacter {

    private func firstUniqueCharacter(InString string: String) -> Int{
        var dict = [Character:(count: Int, index: Int)]()
        var index = 0
        for char in string {
            if var tup = dict[char]{
                tup.count += 1
                dict[char] = tup
            } else {
                let tup = (count: 1, index: index)
                dict[char] = tup
                
            }
            index += 1
        }

        // Sort on index
        let sortDict = dict.sorted { (dict1, dict2) -> Bool in
            dict1.value.index < dict2.value.index
        }

        // getting first Unique
        let finalDict = sortDict.first { $0.value.count == 1 }
        
        return finalDict?.value.index ?? -1
    }

    
    static func run(){
        let obj = FirstUniqueCharacter()
        let index = obj.firstUniqueCharacter(InString: "dddccdbba")
        print("\(String(describing: index))")
    }
}
