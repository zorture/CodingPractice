//
//  SearchMatrixII.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/14/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//
// https://leetcode.com/problems/search-a-2d-matrix-ii/
import Foundation

struct SearchMatrixII {
    
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var matSet = Set<Int>()
        matrix.forEach { row in
            row.forEach { col in
                matSet.insert(col)
            }
        }
        return matSet.contains(target)
    }
    
    static func run() {
        let obj = SearchMatrixII()
        let matrix = [
            [1,   4,  7, 11, 15],
            [2,   5,  8, 12, 19],
            [3,   6,  9, 16, 22],
            [10, 13, 14, 17, 24],
            [18, 21, 23, 26, 30]
        ]
        print(obj.searchMatrix(matrix, 5))
        print(obj.searchMatrix(matrix, 30))
        print(obj.searchMatrix(matrix, 35))
    }
}
