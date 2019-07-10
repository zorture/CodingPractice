//
//  LinkedList.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 7/9/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

class Node {
    let data: Int
    var nextNode: Node?
    init(withData data: Int) {
        self.data = data
    }
}

class LinkedList {
    
    var head: Node?
    private func createList() {
        let node = Node(withData: 1)
        head = node
        let node2 = Node(withData: 2)
        node.nextNode = node2
        let node3 = Node(withData: 3)
        node2.nextNode = node3
        var previousNode = node3
        for i in 0...6 {
            let node = Node(withData: i+5)
            previousNode.nextNode = node
            previousNode = node
        }
    }
    
    private func traverseIterative() {
        
        guard var node = head else { return }
        print(node.data)
        while node.nextNode != nil {
            if let nextNode = node.nextNode {
                node = nextNode
            }
            print(node.data)
        }
        
    }
    
    private func traverseRecursive(node: Node?) {
        guard let node = node else { return }
        print(node.data)
        traverseRecursive(node: node.nextNode)
    }
    
    private func insert(atIndex index: Int, withData data: Int) {
        guard var currentNode = head else { return }
        let newNode = Node(withData: 4)
        for _ in 0..<index {
            if let nextNode = currentNode.nextNode {
                currentNode = nextNode
            }
        }
        let tempNode = currentNode.nextNode
        currentNode.nextNode = newNode
        newNode.nextNode =  tempNode
    }

    private func reverseIterative(node: Node?) {
        var currentNode = node
        var previousNode: Node? =  nil
        var nextNode: Node? = nil
        while currentNode != nil {
            nextNode = currentNode!.nextNode
            currentNode!.nextNode = previousNode
            previousNode = currentNode
            currentNode = nextNode
        }
        head = previousNode
    }
    
    private func reverseRecursive(node: Node?) {
        guard let currentNode = node else { return }
        reverseRecursive(node: currentNode.nextNode)
        if let tempNode = currentNode.nextNode {
            tempNode.nextNode = currentNode
            currentNode.nextNode = nil
        } else {
            head = currentNode
        }
    }
    
    static func run() {
        let list = LinkedList()
        list.createList()
        print("Iterative")
        list.traverseIterative()
        list.insert(atIndex: 2, withData: 4)
        print("Recursive")
        list.traverseRecursive(node: list.head)
        print("Reverse Recursive")
        //list.reverseRecursive(node: list.head)
        print("Reverse Iterative")
        list.reverseIterative(node: list.head)
        print("Iterative")
        list.traverseIterative()
    }
    
}
