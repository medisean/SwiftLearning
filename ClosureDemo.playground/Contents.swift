//: Playground - noun: a place where people can play
// This is a closure learning demo

import UIKit

var str = "Hello, playground"

// Syntax
//{
//    (parameters) -> return type in
//        statement
//}

typealias Closure = (parameter1: String, parameter2: String) -> String

func testDisclosure(name: String, closure: Closure) {
    print(name)
}

testDisclosure("cool") { (parameter1, parameter2) -> String in
    print(parameter1)
    print(parameter2)
    return "disclosure"
}

