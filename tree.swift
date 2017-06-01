
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
    
    func printTree() {
        printTree(parentNode: root)
    }
    
    private func printTree(parentNode:Node?) {
        if parentNode != nil {
            printTree(parentNode: parentNode?.leftChild)
            parentNode!.printNode()
            printTree(parentNode: parentNode?.rightChild)
        }
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
    
    func search(searchID:Int) -> Node? {
        return search(searchID:searchID, parentNode:root)
    }
    
    private func search(searchID:Int, parentNode:Node?) -> Node? {
        if parentNode != nil {
            if searchID == parentNode!.data.ID {
                return parentNode
            }
            else if searchID < parentNode!.data.ID {
                return search(searchID: searchID, parentNode: parentNode!.leftChild)
            }
            else {
                return search(searchID: searchID, parentNode: parentNode!.rightChild)
            }
        }
        else {
            return nil
        }
    }
    
    func deleteElement(searchID:Int) {
        if root != nil {
            deleteElement(searchID: searchID, parentNode: &root)
        }
    }
    
    private func deleteElement(searchID:Int, parentNode:inout Node?) {
        if parentNode?.leftChild == nil && parentNode?.rightChild == nil {
            parentNode = nil
        }
        
    }
    
    private func remove() {
        
    }
    
   
}






