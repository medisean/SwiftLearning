//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Foo {
    var something: Int! {
        didSet {
            // use a method to override observers
            somethingWasSet()
        }
    }
    func somethingWasSet() {
        print("vroom")
    }
}

class Bar: Foo {
    override func somethingWasSet() {
        super.somethingWasSet()
        print("toot")
    }
}

var bar = Bar()
bar.something = 3
print(bar.something)