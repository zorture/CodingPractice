//
//  MinimumEncoding.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/21/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct MinimumEncoding {
    
    func minimumTime(numOfSubFiles:Int, files:[Int]) -> Int
    {
        var sortAr = files.sorted { $0 < $1 }
        for i in 1..<sortAr.count {
            sortAr[i] += sortAr[i-1]
            if i == 1 {
                sortAr[i-1] = 0
            }
        }
        let finalOutPut = sortAr.reduce(0, +)
        return finalOutPut
    }
    
    static func run() {
        let obj = MinimumEncoding()
        print(obj.minimumTime(numOfSubFiles: 6, files: [1,2,5,10,35,89]))
        
    }
}
