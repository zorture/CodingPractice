//
//  TreasureIsland.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/17/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

struct TreasureIsland {
    
    struct Loc: Hashable {
        let x: Int
        let y: Int
        let index: Int
        func hash(into hasher: inout Hasher) {
            hasher.combine(x)
            hasher.combine(y)
        }
        static func == (lhs: Loc, rhs: Loc) -> Bool {
            return lhs.x == rhs.x && lhs.y == rhs.y
        }
    }
    struct RouteQueue {
        var ar = [Loc]()
        
        mutating func enqueue(loc: Loc) {
            
            ar.append(loc)
        }
        mutating func dequeue() {
            ar.removeFirst()
        }
        func peek() -> Loc? {
            let loc = ar.first
            return loc
        }
        
        func isEmpty() -> Bool {
            return ar.count > 0 ? false : true
        }
    }
    
    
    func shortestPath(forTreasure map: [[String]]) -> [Loc] {
        var shortestPathSet = Set<Loc>()
        var queue = RouteQueue()
        var counter = 0
        queue.enqueue(loc: Loc(x: 0, y: 0, index: counter))
        while (!queue.isEmpty()) {
            if let  loc = queue.peek(){
                if loc.x < 3 && map[loc.y][loc.x+1] != "D" {
                    let newLoc = Loc(x: loc.x+1, y: loc.y, index: counter)
                    if map[loc.y][loc.x+1] == "X" {
                        shortestPathSet.insert(loc)
                        shortestPathSet.insert(newLoc)
                        break
                    } else if !shortestPathSet.contains(newLoc){
                        queue.enqueue(loc: newLoc)
                    }
                }
                if loc.y < 3 && map[loc.y+1][loc.x] != "D" {
                    let newLoc = Loc(x: loc.x, y: loc.y+1, index: counter)
                    if map[loc.y+1][loc.x] == "X" {
                        shortestPathSet.insert(loc)
                        shortestPathSet.insert(newLoc)
                        break
                    } else if !shortestPathSet.contains(newLoc){
                        queue.enqueue(loc: newLoc)
                    }
                }
                if loc.x > 0 && map[loc.y][loc.x-1] != "D" {
                    let newLoc = Loc(x: loc.x-1, y: loc.y, index: counter)
                    if map[loc.y][loc.x-1] == "X" {
                        shortestPathSet.insert(loc)
                        shortestPathSet.insert(newLoc)
                        break
                    } else if !shortestPathSet.contains(newLoc){
                        queue.enqueue(loc: newLoc)
                    }
                }
                shortestPathSet.insert(loc)
                queue.dequeue()
                counter += 1
            }
        }
        
        var prev: Loc?
        var finalAr = [Loc]()
        // sort on bases of index to backtrack from end to start
        let shortestPathAr = shortestPathSet.sorted { $0.index > $1.index }
        for loc in shortestPathAr{
            if prev != nil {
                if (abs(prev!.x - loc.x) == 1 && abs(prev!.y - loc.y) == 0 ) ||
                    (abs(prev!.x - loc.x) == 0 && abs(prev!.y - loc.y) == 1) {
                    finalAr.append(loc)
                    prev = loc
                }
            } else {
                finalAr.append(loc)
                prev = loc
            }
        }
        return finalAr
    }
    
    static func run() {
        let obj = TreasureIsland()
        let map = [["O", "O", "O", "O"],
                   ["D", "O", "D", "O"],
                   ["O", "O", "O", "O"],
                   ["X", "D", "D", "O"],]
        print(obj.shortestPath(forTreasure: map))
    }
}
