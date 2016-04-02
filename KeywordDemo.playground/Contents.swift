//: Playground - noun: a place where people can play

// This is keyword learning demo

import UIKit

var str = "Hello, playground"

// associatedType
protocol Container {
    associatedtype ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct Stack: Container {
    typealias ItemType = Int
    mutating func append(item: ItemType) {
        items.append(item)
    }
    var items = [Int]()
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Int {
        return items[i]
    }
}

var stackInt = Stack()
stackInt.append(22)
let i = stackInt.items
print(stackInt.items[0])
