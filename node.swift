
import Foundation

class Node {
    
    var leftChild:Node?
    var rightChild:Node?
    var data:User
    
    init(inUser:User, left:Node?, right:Node?) {
        data = inUser
        leftChild = left
        rightChild = right
    }
    
    func printNode() {
        print("ID: \(data.ID)")
        print("Name: \(data.name)")
        print("Age: \(data.age)")
        print("Location: \(data.location)")
    }
    
}
