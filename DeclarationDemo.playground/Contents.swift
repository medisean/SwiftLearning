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

/// 8. default parameter
func testDefaultParameter(para1: String, Para2 para2: String = "cool") {
    print(para1 + para2)
    print("---------------")
}

testDefaultParameter("param1 + ")
testDefaultParameter("test param1 + ", Para2: "param2")

// middle param is default
func testDefaultParameter2(para1: String, Para2 para2: String = "cool", Param3 para3: String) {
    print(para1 + para2 + para3)
    print("---------------")
}

testDefaultParameter2("p1", Param3: "p3")

enum WechatError: ErrorType {
    case NoBattery // 手机没电
    case NoNetwork // 手机没网
    case NoDataStream // 手机没有流量
}

// 9. keyword throw and rethrow
// write try catch and throw by myself
public enum OwnerError: ErrorType {
    case NoPermission
    case NoWord
    case NotKnown
}

func testOwner(number: Int) throws {
    if number == 0 {
        throw OwnerError.NoPermission
    } else if number > 0 {
        throw OwnerError.NoWord
    } else {
        throw OwnerError.NotKnown
    }
}

func catchThrow(number: Int) {
    do {
        try testOwner(number)
    } catch OwnerError.NoPermission {
        print("No Permission")
    } catch OwnerError.NoWord {
        print("No Word")
    } catch {
        print("Not known")
    }
}

catchThrow(0)
catchThrow(1)
catchThrow(-1)
print("---------------")

// rethrow, not understand very well

// noscape solve closure loop problem


// 10. enumeration
enum Number {
    case Integer(Int)
    case Real(Double)
}

let f = Number.Integer(10)
print(f)

// enum and protocol
enum Gender: String {
    case Female = "Female"
    case Male = "Male"
}

let xGender = Gender.Male
print(xGender.rawValue)

// another enum

enum NestedValue {
    case name(String)
    case age(Int)
    case address(String, String)
}

let nameValue: NestedValue = NestedValue.name("11")
let addressValue = NestedValue.address("Shanghai", "Pudong")

switch addressValue {
case .address(let city, let area):
    print(city + area)
default:
    print("default address")
}































