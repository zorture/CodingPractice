//
//  Meetup.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/18/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct Meetup {
    

    func scheduleIntervals(forTime array: [[String]]) -> [[String]] {
        var schedule = [[String]]()

        let newArr = array.sorted { $0.first!.localizedStandardCompare($1.first!) == .orderedAscending }

        for i in 0..<newArr.count-1 {
            let val1 = newArr[i]
            let val2 = newArr[i+1]

            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm"
            let date1 = dateFormatter.date(from: val1.last!)
            let date2 = dateFormatter.date(from: val2.first!)
            let startData = dateFormatter.date(from: "7:00")
            let endData = dateFormatter.date(from: "18:00")
            if i == 0 && dateFormatter.date(from: val1.first!)!  > startData! {
                schedule.append(["7:00", val1.first!])
            }
            if date1! < date2! {
                schedule.append([val1.last!, val2.first!])
            }
            if i == newArr.count-2 && dateFormatter.date(from: val2.last!)! < endData!  {
                schedule.append([val2.last!,"18:00"])
            }
        }
        
        return schedule
    }
    
    static func run() {
        let obj = Meetup()
        var schedule = [["16:00", "16:30"],
                   ["6:00", "7:30",],
                   ["8:00", "9:00",],
                   ["8:00", "9:20",],
                   ["17:30", "19:20",],]
        print(obj.scheduleIntervals(forTime: schedule))
        
        schedule = [["12:00", "17:30"],
                        ["8:00", "10:00",],
                        ["10:00", "11:30",],]
        print(obj.scheduleIntervals(forTime: schedule))
    }
}
