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


















