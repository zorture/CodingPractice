//
//  AirScheduling.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/21/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct AirScheduling {
    
    func optimalUtilization(maximumOperatingTravelDistance:Int,
                            forwardShippingRouteList:[[Int]],
                            returnShippingRouteList:[[Int]]) -> [[Int]]
    {
        var finalAr = [[Int]]()
        
        var a = forwardShippingRouteList
        a.append(contentsOf: returnShippingRouteList)
        
        for i in 0..<a.count-1 {
            let val1 = a[i].last!
            let val2 = a[i+1].last!
            let val = val1 + val2
            if (val <= maximumOperatingTravelDistance){
                finalAr.append([a[i].first!, a[i+1].first!, a[i].last! + a[i+1].last!])
            }
        }
        
        let sortedFinalAr = finalAr.sorted { $0.last! > $1.last!}
        var newAr = [[Int]]()
        var maxValue: Int!
        for i in 0..<sortedFinalAr.count {
            if i == 0 {
                maxValue = sortedFinalAr[i].last!
            }
            if sortedFinalAr[i].last! <= maxValue {
                newAr.append([sortedFinalAr[i][0],sortedFinalAr[i][1]])
            }
        }
        
        return newAr
    }
    // FU
    
    static func run() {
       let obj = AirScheduling()
        print(obj.optimalUtilization(maximumOperatingTravelDistance: 20, forwardShippingRouteList: [[1,8],[2,15],[3,9]], returnShippingRouteList: [[1,8],[2,11],[3,12]]))
    }
}
