
import Foundation

func findAndPrint(userID:Int, userTree:BinarySearchTree) {
    if let name = userTree.search(searchID: userID)?.data.name {
        print(name)
    }
    else {
        print("User Not Found")
    }
}

var userTree = BinarySearchTree()

userTree.addNode(inUser: User(inID: 848120769, inName: "Kyle O'Brien", inAge: 28, inLoc: "San Francisco, CA"))
userTree.addNode(inUser: User(inID: 4047621, inName: "Jill Rogers", inAge: 37, inLoc: "Baltimore, MD"))
userTree.addNode(inUser: User(inID: 7072921668, inName: "Lyida O'Brien", inAge: 27, inLoc: "San Francisco, CA"))

findAndPrint(userID: 848120769, userTree: userTree)
findAndPrint(userID: 87990, userTree: userTree)
