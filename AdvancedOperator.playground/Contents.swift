//: Playground - noun: a place where people can play
// This is an advanced operator demo

import UIKit

var str = "Hello, playground"

// 1. Not operator
let initialBits: UInt8 = 0b00001111
let inversedBits = ~initialBits
print(inversedBits)

// 2. And operator
let firstSixBits: UInt8  = 0b00001111
let secondSixBits: UInt8 = 0b00000011
let andSixBits = firstSixBits & secondSixBits
print(andSixBits)

// 3. Or operator
let someSixBits: UInt8 = 0b00001111
let moreSixBits: UInt8 = 0b11110000
let mixSixBits = someSixBits | moreSixBits
print(mixSixBits)

// 4. Exclusive or operator
let firstExBits: UInt8  = 0b00001111
let secondExBits: UInt8 = 0b00001100
let resultExBits = firstExBits ^ secondExBits
print(resultExBits)

// 5. Left and right shift operator
let leftSixBits: UInt8 = 0b00000011
let leftShiftBits = leftSixBits << 1 // 0b00000110
print(leftShiftBits)

let rightSixBits: UInt8 = 0b00000011
let rightShiftBits = rightSixBits >> 1 // 0b00000001
print(rightShiftBits)

// 6. Operator function
struct People {
    var name: String
    var age: Int
//    func - (people: People) -> People { // not allowed
//        return People(name: people.name, age: self.age - people.age)
//    }
}

func + (left: People, right: People) -> People { // global add operator, not allow in struct
    return People(name: left.name + right.name , age: left.age + right.age)
}

prefix func - (people: People) -> People {
    return People(name: people.name, age: -people.age)
}

let p1 = People(name: "Li", age: 22)
let p2 = People(name: "Lei", age: 18)
let p3 = p1 + p2
print(p3)
print(-p3)














