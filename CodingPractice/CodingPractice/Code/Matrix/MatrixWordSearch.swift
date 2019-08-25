//
//  MatrixWordSearch.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/18/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

class Triess {
    var value: String!
    var child = [String: Triess]()
}

class MatrixWordSearch {
    
    var trieDict = Triess()

    func longestWord(inMatrix matrix: [[String]], fromWrods words: [String]) -> [String] {
        createTrie(forWords: words)
        return ["a"]
    }
    
    func creatTrie(forNode node: Triess , withChar char: String) -> Triess {
        
        guard let child = node.child[char] else {
            let childTrie = Triess()
            childTrie.value = char
            return childTrie
        }
        
        return child
    }
    
    func createTrie(forWords words: [String]) {
        
        words.forEach { word in
            let chars = Array(word)
            var prevTrie = trieDict
            chars.forEach { char in
                let trie = creatTrie(forNode: prevTrie, withChar: String(char))
                prevTrie.child[String(char)] = trie
                prevTrie = trie
            }
        }
    }
    
    func searchWords(inList words: [String]) {
        
        words.forEach { word in
            var counter = 1
            var trie = trieDict
            for char in Array(word) {
                if trie.child[String(char)] == nil {
                    print("false")
                    break
                } else if counter == Array(word).count {
                    print("true")
                }
                trie = trie.child[String(char)]!
                counter += 1
            }
        }
        
    }
    
    static func run() {
        let obj = MatrixWordSearch()
        let matrix = [["I", "R", "G", "L", "U"],
                      ["P", "A", "C", "E", "F"],
                      ["P", "O", "N", "O", "D"],
                      ["L", "E", "E", "C", "E"],
                      ["E", "G", "A", "N", "T"],]
        //let wordList = ["apple","applest","applepv"];
        //obj.createTrie(forWords: wordList)
        //print(obj.searchWords(inList: ["apple","apples","applep","applz"]))
        let wordLists = ["confident", "apple", "aonecode","graceful", "elegent"];
        print(obj.longestWord(inMatrix: matrix, fromWrods: wordLists))
    }
}
