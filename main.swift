
import Foundation

var userTree = BinarySearchTree()

userTree.addNode(inUser: User(inID: 848120769, inName: "Kyle O'Brien", inAge: 28, inLoc: "San Francisco, CA"))
userTree.addNode(inUser: User(inID: 7072921668, inName: "Lyida O'Brien", inAge: 27, inLoc: "San Francisco, CA"))

print(userTree.numItems)
userTree.root!.printNode()
