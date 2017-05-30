
import Foundation

class BinarySearchTree {
    
    var root:Node?
    private var numItems = 0
    
    init() {
        root = nil
    }
    
    init(firstNode:User) {
        root = Node(inUser: firstNode, left: nil, right: nil)
        numItems = 1
    }
    
    // Getters
    
    func size() -> Int {
        return numItems
    }
    
    func getRoot() -> Node? {
        return root
    }
    
    func isEmpty() -> Bool {
        return root == nil
    }
    
    // Operations
    
    func addNode(inUser:User) {
        let newNode = Node(inUser: inUser, left: nil, right: nil)
        numItems += 1
        addNode(newNode: newNode, parentNode: &self.root)
    }
    
    private func addNode(newNode:Node, parentNode:inout Node?) {
        if parentNode == nil {
            parentNode = newNode
        }
        else if newNode.data.ID < parentNode!.data.ID {
            addNode(newNode: newNode, parentNode: &parentNode!.leftChild)
        }
        else {
            addNode(newNode: newNode, parentNode: &parentNode!.rightChild)
        }
    }
    
    func printTree() {
        if let topNode = root {
            printTree(leftNode: root!.leftChild, rightNode: root!.rightChild)
        }
    }
    
    private func printTree(leftNode:Node, rightNode:Node) {
        
    }
    
}






