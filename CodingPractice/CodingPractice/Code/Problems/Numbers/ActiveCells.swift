//
//  ActiveCells.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/15/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct ActiveCells {
    func cellCompete(states:[Int], days:Int) -> [Int]{
        var newArray = states
        var tempArray = [Int]()
        for _ in 0..<days {
            tempArray.removeAll()
            for i in 0..<newArray.count {
                if i == 0 {
                    if newArray[i+1] == 0 {
                        tempArray.append(0)
                    } else {
                        tempArray.append(1)
                    }
                } else if i == newArray.count-1 {
                    if newArray[i-1] == 0 {
                        tempArray.append(0)
                    } else {
                        tempArray.append(1)
                    }
                }
                else if newArray[i-1] == newArray[i+1] {
                    tempArray.append(0)
                } else {
                    tempArray.append(1)
                }
            }
            newArray = tempArray
        }
        return tempArray
    }
    
    static func run(){
        let obj = ActiveCells()
        //print(obj.cellCompete(states: [1,0,0,0,0,1,0,0], days: 1))
        print(obj.cellCompete(states: [1,1,1,0,1,1,1,1], days: 2))
    }
    
}
