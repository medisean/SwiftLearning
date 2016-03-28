//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 1. generics in method
func swapTwoInts<T>(inout a: T, inout b: T) {
    let temparayA = a
    a = b
    b = temparayA
}

var a = 10, b = 20
swapTwoInts(&a, b: &b)
print(a,b)

// 2. generics in property

struct Stack<Element> {
    var items = [Element]()
    mutating func push(item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

// 3. genecricss in extension
extension Stack {
    var topItem: Element? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
let value = stack.pop()
print(value)

class AClass {
    var aName: String?
}

protocol BProtocol {
    func bFunction()
}

class BClass: BProtocol {
    func bFunction() {
        print("this is b class")
    }
}


// 4. generics in protocol
func someFunction<T: AClass, U: BProtocol>(someT: T, someU: U) {
    print(someT.aName)
    someU.bFunction()
}

let aClass = AClass()
let bClass = BClass()
aClass.aName = "cool"

someFunction(aClass, someU: bClass)


func findIndex<T: Equatable>(array: [T], valueToFind: T) -> Int? {
    for (index, value) in array.enumerate() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let arr = ["test1", "test2", "test3", "test4"]
print(findIndex(arr, valueToFind: "test4"))
print(findIndex(arr, valueToFind: "test10"))


// note: in swift, structure and enumeration is value type, class if reference type
// structure and enumeration can have method, including instance method and type method
// by default, you can't modify property value in structure and enumeration method, if you want, add keyword: mutating, like this
// PS: in class type, you can modify property value in default

struct Point {
    var x = 0, y = 0
    mutating func moveBy(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}
var p = Point(x: 10, y: 10)
p.moveBy(20, y: 20)

// or like this

enum Switch {
    case on, off
    mutating func change() {
        switch self {
        case on:
            self = off
        case off:
            self = on
        }
    }
}

// 5.in protocol header, you cann't use Generic type, but associatedtype
// below is wrong
//protocol Container<Element> {
//    mutating func append(item: Element)
//    var count: Int{ get }
//    subscript(i: Int) -> Element { get }
//}

// you can write like this
protocol Container {
    associatedtype ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}


// 6. where
func allItemMatch<C1: Container, C2: Container where C1.ItemType == C2.ItemType, C1.ItemType: Equatable>(container1: C1, container2: C2) -> Bool {
    if container1.count != container2.count {
        return false
    }

    for i in 0..<container1.count {
        if container1[i] != container2[i] {
            return false
        }
    }
    return true
}

var stackString = Stack<String>()
stackString.push("yes")
stackString.push("no")

var stackString2 = Stack<String>()
stackString2.push("yes")
stackString2.push("no")

var arrayOfString = ["yes", "no"]
if allItemMatch(stackString, container2: stackString2) {
    print("All item match")
} else {
    print("Not all item match")
}



















