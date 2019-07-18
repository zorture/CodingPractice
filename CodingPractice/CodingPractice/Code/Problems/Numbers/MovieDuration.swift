//
//  MovieDuration.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/14/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct MovieDuration {
    
    func moviesToWatch(forDurations durations: [Int], flightTime flight: Int) -> [[Int]] {
        let totalDuration = flight
        var durationDict: [Int: Int] = [:]
        durations.forEach { durationDict[$0] = totalDuration - $0 }
        // Set to avoid duplicates
        var movieList = Set<[Int]>()
        let sortedDuration = durations.sorted { $0 < $1 }
        durations.forEach { duration in
            let required =  durationDict[duration]
            let value  = sortedDuration.filter { $0 <= required! }.max() ?? 0
            var ar = [duration, value]
            // Ensuring Set no duplicacy.
            ar = ar.sorted { $0 < $1  }
            movieList.insert(ar )
        }

        let max = movieList.map { $0.reduce(0, +) }.max()
        let result  = movieList.filter { $0.reduce(0, +) ==  max }
        return Array(result)
    }
    

    
    static func run() {
        let obj = MovieDuration()
        print(obj.moviesToWatch(forDurations: [90, 85, 75, 60, 120, 150, 125], flightTime: 220))
        print("\n")
        print(obj.moviesToWatch(forDurations: [90, 85, 75, 60, 120, 150, 125, 200, 20, 201, 19], flightTime: 220))
        print("\n")
        print(obj.moviesToWatch(forDurations: [1, 2, 3, 6, 7, 8, 9, 1], flightTime: 10))
        
    }
}
