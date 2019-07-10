//
//  MergeSortedArray.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/10/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct MergeSortedArray {
    
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        nums1 = mergeArray(leftArray: nums1, rightArray: nums2)
    }
    
    func mergeArray(leftArray: [Int], rightArray: [Int])-> [Int]{
        
        var mainArray = [Int]()
        
        var ltPvt = 0
        var rtPvt = 0
        
        while ltPvt < leftArray.count && rtPvt < rightArray.count {
            if leftArray[ltPvt] < rightArray[rtPvt] {
                mainArray.append(leftArray[ltPvt])
                ltPvt += 1
            }else {
                mainArray.append(rightArray[rtPvt])
                rtPvt += 1
            }
        }
        
        while ltPvt < leftArray.count {
            mainArray.append(leftArray[ltPvt])
            ltPvt += 1
        }
        
        while rtPvt < rightArray.count {
            mainArray.append(rightArray[rtPvt])
            rtPvt += 1
        }
        return mainArray
    }
    
    func mergeSort(withArray array:[Int]) -> [Int]{
        
        //print(array)
        if(array.count < 2){
            return array
        }
        let mid = array.count/2
        //print(mid)
        
        var leftArray = [Int]()
        var rightArray = [Int]()
        
        for i in 0...mid-1{
            leftArray.append(array[i])
        }
        
        for i in mid...array.count-1{
            rightArray.append(array[i])
        }
        
        let mergedArray = mergeArray(leftArray: mergeSort(withArray: leftArray), rightArray: mergeSort(withArray: rightArray))
        return mergedArray
    }

    
    static func run() {
        let obj = MergeSortedArray()
        print(obj.mergeSort(withArray: [9,1,8,2,7,3,6,4,6,5]))
        let ar1 = [1,2,3,4]
        let ar2 = [4,5,6,7]
        let ar = obj.mergeArray(leftArray: ar1, rightArray: ar2)
        print(ar)
        
    }
}
