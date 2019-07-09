//
//  MoveZeroes.swift
//  CodingPractivde
//
//  Created by Kanwar Zorawar Singh Rana on 7/8/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct MoveZeroes {
    
    private func moveZeroes2(_ nums: inout [Int]) {
        var x = 0
        var y = 1
        for _ in 0...nums.count  {
            if nums[x] != 0{
                x += 1
                y = x + 1
            } else if nums[x] == 0 && nums[y] != 0 {
                nums.swapAt(x, y)
                x += 1
                y += 1
            } else {
                while ( y < nums.count-1 && nums[y] == 0){
                    y += 1
                }
            }
            //print("\(nums)\n")
        }
    }

    private func moveZeroes(_ nums: inout [Int]) {
        let zeros = nums.filter { $0 == 0 }
        nums = nums.filter { $0 != 0 }
        nums.append(contentsOf: zeros)
    }
    
    static func run(){
        let obj = MoveZeroes()
        var nums = [3,44,55,69,0,0,1,0,0,0,0,33,44,55,66,77,88,99,0]
        obj.moveZeroes(&nums)
        print(nums)
    }
    
}
