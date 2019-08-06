//
//  MagicMatrix.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/24/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct MagicMatrix {
    
    func formingMagicSquare(s: [[Int]]) -> Int {
        
        let dict = [Int: [Int]]()
        for i in 0..<3{
            let ar = [Int]()
            for j in 0..<3{
               // let value = a[i][j] +
               // ar.append(<#T##newElement: Int##Int#>)
                //print("[\(i)\(j)]:\(s[i][j])", separator: "", terminator: " ")
            }
        }
        
        printThe(Matrix: s)
        return 2
    }
    
    func printThe(Matrix s: [[Int]]) {
        for i in 0..<3{
            
            for j in 0..<3{
                
                print("[\(i)\(j)]:\(s[i][j])", separator: "", terminator: " ")
            }
            print("\n")
        }
    }
    
    static func run() {
        let obj = MagicMatrix()
        let matrix = [[5,3,4],[1,5,8],[6,4,2]]
        print(obj.formingMagicSquare(s: matrix))
    }
}
