//: Playground - noun: a place where people can play
// this is an attributes demo
// format: @attribute name(attribute arguments)

import UIKit

var str = "Hello, playground"

// keyword: autoclosure

// keyword: available

protocol MyProtocol {
    func myFunction()
}

protocol MyRenamedProtocol {
    func myFunction()
}

// @@available(platform, version number, *)
//@available(*, unavailable, renamed="MyRenamedProtocol")
//typealias MyProtocol = MyRenamedProtocol

@available(iOS 8.0, OSX 10.10, *)
class MyClass {
    
}

let myClass = MyClass()

// keyword: objc

// keyword: noescape

// keyword: nonobjc

//keyword: noreturn

// keyword: NSApplicationMain

//keyword: NSCoping

// keyword: NSManaged

// keyword: testable

// keyword: UIApplicationMain

// keyword: convention











