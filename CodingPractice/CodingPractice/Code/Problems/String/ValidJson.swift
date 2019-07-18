//
//  ValidJson.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/15/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation


struct ValidJson {
    
    struct JsonStack {
        var ar = [Character]()
        mutating func push(char: Character) {
            ar.append(char)
        }
        mutating func pop() {
            ar.removeLast()
        }
        func top() -> Character? {
            let char = ar.last
            return char
        }
        
        func isEmpty() -> Bool {
            return ar.count > 0 ? false : true
        }
    }
    
    func isValid(jsonString json: String) -> Bool {
        let characterSet = Set("{}\"")
        let jsonString = json.filter{ characterSet.contains($0) }
        var stack = JsonStack()
        for char in jsonString {
            if char == "{" || (char == "\"" && stack.top() != "\""){
                stack.push(char: char)
            } else if char == "}" || char == "\"" {
                stack.pop()
            }
        }
        return stack.isEmpty()
    }
    
    static func run() {
        let obj = ValidJson()
        print(obj.isValid(jsonString: "{\"test\": \"Hello World\"}"))
        print(obj.isValid(jsonString: "{\"test\": Hello World\"}"))
    }
}
