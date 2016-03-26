//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var myArray = [2,1,3]
let result = myArray.sort(>)
print(result)
print("----------------")

let first = "firstName", last = "lastName"
let people = [[first: "Jo", last: "Smith"],
              [first: "Joe", last: "Ha"],
              [first: "Li", last: "Lei"],
              ]
let lastDescriptor = NSSortDescriptor(key: last, ascending: true)
let sortedArray = (people as NSArray).sortedArrayUsingDescriptors([lastDescriptor])
print(sortedArray)
print("----------------")

class Man {
    var name: String!
    init(name: String) {
        self.name = name
    }
}

let men = [Man(name: "Cool"), Man(name: "Akb"), Man(name: "Duck")]
let menResultArray = men.sort({$0.name > $1.name })
for man in menResultArray {
    print(man.name)
}
print("----------------")




