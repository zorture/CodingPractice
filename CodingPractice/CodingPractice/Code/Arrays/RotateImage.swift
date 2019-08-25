//
//  RotateImage.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/7/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct RotateImage {
    
    func rotate(_ matrix: inout [[Int]]) {
        var ar = [[Int]]()
        for j in 0..<matrix.count {
            var tempAr = [Int]()
            for i in (0..<matrix.count).reversed(){
                let element = matrix[i][j]
                tempAr.append(element)
            }
            ar.append(tempAr)
        }
        matrix = ar
    }
    
    static func run() {
        let obj = RotateImage()
        var matrix = [
            [1,2,3],
            [4,5,6],
            [7,8,9]
        ]
        print(obj.rotate(&matrix))
    }
}
