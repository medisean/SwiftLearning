//: Playground - noun: a place where people can play
// This is a initialization demo

import UIKit

var str = "Hello, playground"


// 1. struct init
struct People {
    var name: String // you can just set name = "ZLM" by default
    init() {
        name = "ZLM"
    }

    init(name: String) { // another init method
        self.name = name
    }
}

var p1 = People()
print(p1.name)

var p2 = People(name: "Tough Man")
print(p2.name)

