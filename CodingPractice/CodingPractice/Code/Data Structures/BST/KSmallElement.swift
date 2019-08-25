//
//  KSmallElement.swift
//  CodingPractice
//
//  Created by Kanwar Zorawar Singh Rana on 8/6/19.
//  Copyright © 2019 Kanwar Zorawar Singh Rana. All rights reserved.
//

import Foundation

class KSmallElement {
    
    var resultAr = [Int]()
    var element = 0
    var k = 0
    
    
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        resultAr.removeAll()
        self.k = k
        inOrderTraversal(rootNode: root)
        return element
    }
    
    func inOrderTraversal(rootNode node: TreeNode?) {
        
        guard let node = node, resultAr.count != k else {
            return
        }
        inOrderTraversal(rootNode: node.left)
        if resultAr.count != k {
            resultAr.append(node.val)
            element = node.val
        }
        inOrderTraversal(rootNode: node.right)
    }
    
    
    static func run(){
        let obj =  KSmallElement()
        let rootA1 = TreeNode(3)
        let nodeA1 = TreeNode(1)
        let nodeA2 = TreeNode(4)
        rootA1.left = nodeA1
        rootA1.right = nodeA2
        let nodeA3 = TreeNode(2)
        nodeA1.right = nodeA3
        
        print(obj.kthSmallest(rootA1, 1))
        
        let rootB1 = TreeNode(5)
        let nodeB1 = TreeNode(3)
        let nodeB2 = TreeNode(6)
        rootB1.left = nodeB1
        rootB1.right = nodeB2
        let nodeB3 = TreeNode(2)
        let nodeB4 = TreeNode(4)
        nodeB1.left = nodeB3
        nodeB1.right = nodeB4
        let nodeB5 = TreeNode(1)
        nodeB3.left = nodeB5
        
         print(obj.kthSmallest(rootB1, 3))
    }
}
