import Foundation

class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

let node3 = Node(value: 3, next: nil)
let node2 = Node(value: 2, next: node3)
let node1 = Node(value: 1, next: node2)

func printList(head: Node?) {
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
}

//printList(head: node1)

func reverseLinkedList(head: Node?) -> Node? {
    var currentNode = head
    var prev: Node?
    var next: Node?
    
    while currentNode != nil {
        next = currentNode?.next // * save currentNode's next value
        currentNode?.next = prev // set currentNode's next to previous
        prev = currentNode // set previous to currentNode
        currentNode = next // * set currentNode to the saved currentNode's next value
    }
    return prev
}

let reversedList = reverseLinkedList(head: node1)
printList(head: reversedList)
