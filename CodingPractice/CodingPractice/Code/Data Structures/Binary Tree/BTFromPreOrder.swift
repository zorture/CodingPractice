//
//  BTFromPreOrder.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/20/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

class BTFromPreOrder {
    
    func binaryTree(fromPreOrder array: [Int]) -> TreeNode{
        
        let stack = Stack<TreeNode>()
        let rootNode = TreeNode(array.first!)
        stack.push(value: rootNode)
        
        for i in 1..<array.count{
            let treeNode = TreeNode(array[i])
            var tempNode: TreeNode? = nil
            while (!stack.isEmpty() && array[i] > stack.top()!.val){
                tempNode = stack.peek()!
            }
            
            if tempNode != nil{
                tempNode!.right = treeNode
                stack.push(value: treeNode)
            } else {
                let prevNode = stack.top()
                prevNode?.left = treeNode
                stack.push(value: treeNode)
            }
        }
        
        return rootNode
    }
    
    static func run() {
        let obj = BTFromPreOrder()
        print(obj.binaryTree(fromPreOrder: [20,10,5,15,30,25,35]))
    }
}
