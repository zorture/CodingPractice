//
//  KLargestElement.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/7/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct KLargestElement {
    
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        let sorted = nums.sorted(by: { $0 > $1 })
        return sorted[k-1]
    }
    
    static func run() {
        let obj = KLargestElement()
        print(obj.findKthLargest([3,2,1,5,6,4], 2))
    }
}
