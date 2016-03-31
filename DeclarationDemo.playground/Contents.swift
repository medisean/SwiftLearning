//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 1. constant declaration
// let constant_name: type = expression
let value = 32 + 64
let (firstName, secondName) = ("Zou", "Liangming")

// 2. Computed variables and properties

var homeAddress: String {
get {
    return firstName
}
set {
    print(newValue)
}
}

homeAddress = "Bibo Road"
print(homeAddress)

// 3. observers in variables and properties
var name: String? {
    willSet {
        print("name will set")
    }
    didSet {
        print("name did set")
    }
}

name = "xiangfen"

// 4. override observers
class Car {
    var speed: Double = 0
}

class AutoCar: Car {
    override var speed: Double {
        didSet {
            print("did set auto car speed")
        }
    }
}

class AutoDasCar: AutoCar {
    override var speed: Double {
        didSet {
            print("did set auto das car speed")
        }
    }
}

let dasCar = AutoDasCar()
dasCar.speed = 20

// result:
// did set auto car speed
// did set auto das car speed

// 5. declare variables properties
protocol Property {
    var name: String { get } // name can't set outsite class
}

class GoodProperty: Property {
    var name: String = "Good Property"
    func test() {
        name = "Bad Property"
        print(name)
    }
}

var goodProperty = GoodProperty()
goodProperty.test()
print("---------------")


// 6. keyword inout
func testInOut(inout a: String) {
    a = "cc"
}
var out = "Test inout keyword"
testInOut(&out)
print(out) // out is changed to cc
print("---------------")

// 7. multi parameters
func testMultiParameters(numbers: Int, values: Double...) {
    var result: Double = 0
    for value in values {
        result += value
    }
    print(result)
    print("---------------")
}
testMultiParameters(2, values: 2,3,4,5)
// testMultiParameters(2, values: [3,4,5]) // error call














