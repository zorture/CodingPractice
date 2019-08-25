//
//  SearchMatrixI.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/14/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//
//https://leetcode.com/problems/search-a-2d-matrix/
#warning("Have to create binary search")
import Foundation

struct SearchMatrixI {
    
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.isEmpty {
            return false
        }
        let rowCount = matrix.count
        if rowCount == 0 {
            return false
        }
        let colCount = matrix[0].count
        var targetRow = -1
        for row in 0..<rowCount {
            if target < matrix[row][colCount-1]{
               targetRow = row
                break
            }
        }
       let val = matrix[targetRow].first(where: { $0 == target }) ?? -1
        return val > 0 ? true : false
    }
    
    static func run() {
        let obj = SearchMatrixI()
        let matrix = [
            [1,   3,  5,  7],
            [10, 11, 16, 20],
            [23, 30, 34, 50]
        ]
        //print(obj.searchMatrix(matrix, 3))
        //print(obj.searchMatrix(matrix, 30))
        //print(obj.searchMatrix(matrix, 32))
        let matrix1 = [[Int]]()
        print(obj.searchMatrix(matrix1, 0))
        
    }
}
