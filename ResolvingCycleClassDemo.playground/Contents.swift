//: Playground - noun: a place where people can play
// Resolving Strong reference cycles between class reference

import UIKit

var str = "Hello, playground"

// 1.weak reference

class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit {
        print("Person is being deinitialized")
    }
}

class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    weak var tenant: Person?
    deinit {
        print("Apartment is being deinitialized")
    }
}

var p: Person?
var a: Apartment?

p = Person(name: "Joson")
a = Apartment(unit: "Luocheng Road")
p?.apartment = a
a?.tenant = p

//p = nil
a = nil
print(p?.apartment?.unit)

// 2. unowned reference
class ParentClass {
    var name: String?
}
















