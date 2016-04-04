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

// parameter is closure
func testClosure(name: String, closure: Closure) {
    print(name)
}

testClosure("cool") { (parameter1, parameter2) -> String in
    print(parameter1)
    print(parameter2)
    return "disclosure"
}

// return value is closure

func simpleFunction(parameter1: String, parameter2: String) -> String {
    print(parameter1 + parameter2)
    return parameter1 + parameter2
}

func anotherClosure(firstName: String, lastName: String) -> (parameter1: String, parameter2: String) -> String {
    print(firstName + lastName)
    return simpleFunction
}

let closure = anotherClosure("Li", lastName: "Lei")
closure(parameter1: "Li", parameter2: "Mei")

// Custom closure
typealias Success = (dict: Dictionary<String, AnyObject>) -> ()
typealias Failure = () -> ()

enum Response {
    case Success
    case Failure
}

func processDict(dict: Dictionary<String, AnyObject>?, success: Success, failure: Failure) {
    if let dict = dict {
        success(dict: dict)
    } else {
        failure()
    }
}

processDict(["aa":"aa"], success: { (dict) -> () in
    print("success")
    }) { () -> () in
        print("failure")
}

// custom closure 2

enum Result {
    case Success
    case Failure
}

struct Resonse {
    var result: Result
    var string: String
}

typealias CustomClosure = (result: Resonse) -> ()
func processString(string: String?, response: CustomClosure) {
    if let string = string {
        response(result: Resonse(result: .Success, string: string))
    }
}

processString("Real String") { (result) in
    print(result.string)
}
processString(nil) { (result) in
    print(result.string)
}


















