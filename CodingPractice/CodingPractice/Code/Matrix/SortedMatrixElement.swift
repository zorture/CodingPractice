//
//  SortedMatrixElement.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/7/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct SortedMatrixElement {
    
    func kthSmallest1(_ matrix: [[Int]], _ k: Int) -> Int {
        var result = 0
        let p = Float(k)
        let n = Float(matrix.first?.count ?? 1)
        let rem = Float(p/n)
        let qtn = rem.truncatingRemainder(dividingBy: 1)
        let mod = Int(p)%Int(n)
        if mod == 0 {
            let row = Int(rem-1)
            result = matrix[row][row]
        } else {
            let row = Int(rem)
            var col = qtn * Float(n)
            let sig2 = Float(String(format: "%.2f", col))
            col = ceil(sig2 ?? 1)
            
            result = matrix[row][Int(col)-1]
        }
        
        return result
    }
    
    func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
        let flatMap = matrix.flatMap { $0 }.sorted()
        return flatMap[k-1]
    }
    
    static func run() {
        let obj = SortedMatrixElement()
        
        let matrix = [[1,2],[1,3]]
        print(obj.kthSmallest(matrix, 3))
        
        let matrix0 = [[ 1,  5,  9],
                       [10, 11, 13],
                       [12, 13, 15]]
        print(obj.kthSmallest(matrix, 2))
        print(obj.kthSmallest(matrix, 8))
        print(obj.kthSmallest(matrix0, 7))
        
        let matrix1 = [[5]]
        print(obj.kthSmallest(matrix1, 1))
        
        let matrix2 = [[1,2],[4,5]]
        print(obj.kthSmallest(matrix2, 4))
    }
}
