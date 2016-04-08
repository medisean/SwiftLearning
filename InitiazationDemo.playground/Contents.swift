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

// init without parameter name
struct Address {
    var detail: String
    init(_ addressName: String) {
        detail = addressName
    }
}

var a1 = Address("Luo Cheng Road")
print(a1.detail)

// 2. optional property types
class SurveyQuestion {
    let text: String // constant property
    var responst: String?
    init(text: String) {
        self.text = text
    }
    
    func ask() {
        print(text)
    }
}

let question = SurveyQuestion(text: "How old are you?")
question.ask()


// 3. keyword: convience
class ClassA {
    let numA: Int
    init(num: Int) {
        numA = num
    }
    
    convenience init(bigNum: Bool) {
        self.init(num: bigNum ? 10000 : 1)
    }
}

class ClassB: ClassA {
    let numB: Int
    
    override init(num: Int) {
        numB = num + 1
        super.init(num: num)
    }
}

// require: Subclass must rewrite init method
class ClassD {
    let numA: Int
    required init(num: Int) {
        numA = num
    }
    
    convenience init(bigNum: Bool) {
        self.init(num: bigNum ? 10000 : 1)
    }
}

class ClassC: ClassD {
    let numB: Int

    required init(num: Int) {
        numB = num + 1
        super.init(num: num)
    }
}





