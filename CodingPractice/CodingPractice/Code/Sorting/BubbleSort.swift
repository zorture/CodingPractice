//
//  BubbleSort.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/10/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct BubbleSort {
    
    func countSwaps(a: [Int]) -> Void {
        var arr = a
        var swapCount = 0
        for _ in 0..<arr.count {
            for j in 0..<arr.count-1{
                if arr[j] > arr[j+1] {
                    arr.swapAt(j, j+1)
                    swapCount += 1
                }
            }
        }
        print("Array is sorted in \(swapCount) swaps.")
        print("First Element: \(String(describing: arr.first!))")
        print("Last Element: \(String(describing: arr.last!))")
    }

    
    static func run() {
        let obj = BubbleSort()
        obj.countSwaps(a: [3,2,1])
    }
}
