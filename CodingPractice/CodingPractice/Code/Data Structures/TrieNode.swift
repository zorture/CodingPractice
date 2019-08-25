//
//  TrieNode.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/13/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//
#warning("not Copleted")
import Foundation
class TrieNode {
    var value: Character?
    //weak var parent: Node?
    var child = [Character : TrieNode]()
    var end = false
    init(_ val: Character) {
        self.value = val
    }
    
}

class Tries  {
    private let root: TrieNode!
    private var prevTrie: TrieNode!
    init() {
        root = TrieNode(" ")
        prevTrie = root
    }
    
    func creatTrie(forNode node: TrieNode , withChar char: Character) -> TrieNode {
        guard let child = node.child[char] else {
            return TrieNode(char)
        }
        return child
    }
    
    func createTrie(forWords words: String) {
        let chars = Array(words)
        chars.forEach { char in
            let trie = creatTrie(forNode: prevTrie, withChar: char)
            prevTrie.child[char] = trie
            prevTrie = trie
        }
    }

}
