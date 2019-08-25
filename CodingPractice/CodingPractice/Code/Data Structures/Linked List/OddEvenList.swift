//
//  OddEvenList.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/7/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

class OddEvenList {
    
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        var tempNode: ListNode? = nil
        var tempNodeHead: ListNode? = nil
        var currentNode = head
        while (currentNode != nil)  {
            let nextNode = currentNode?.next?.next
            if tempNode == nil {
                tempNode = currentNode?.next
                tempNodeHead = tempNode
            } else {
                tempNodeHead!.next = currentNode?.next
            }
            tempNodeHead = currentNode?.next
            if nextNode == nil {
                currentNode?.next = tempNode
            } else {
                currentNode?.next = nextNode
            }
            currentNode = nextNode
        }
        
        return head
    }
    
    static func run() {
        let obj = OddEvenList()
        let rootNode = ListNode(1)
        //var prevNode = rootNode
        var prevNode = ListNode(100)
        for i in 2...6{
            let node = ListNode(i)
            prevNode.next = node
            prevNode = node
        }
        var newList = obj.oddEvenList(rootNode)
        
        while ((newList?.next) != nil) {
            print(newList?.val as Any)
            newList = newList?.next
        }
    }
}
