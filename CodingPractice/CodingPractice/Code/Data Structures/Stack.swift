//
//  Stack.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/20/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

class Stack<T> {
    
    var ar = [T]()
    
    func push(value: T) {
        ar.append(value)
    }
    
    func pop() {
        ar.removeLast()
    }
    func top() -> T? {
        let value = ar.last
        return value
    }
    
    func peek() -> T? {
        let value = top()
        pop()
        return value
    }
    
    func isEmpty() -> Bool {
        return ar.count > 0 ? false : true
    }
}
