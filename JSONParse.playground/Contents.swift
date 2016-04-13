//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

infix operator <*> {
associativity left
precedence 100
} //左结合的left，优先级100

func <*><A, B>(f: (A -> B?)?, x: A?) -> B? {
    guard let f = f, x = x else {
        return .None
    }
    return f(x)
}


infix operator <~~ {
associativity left
precedence 110
} //左结合的left，优先级110

func <~~<A, B>(x: A?, f: (A -> B?)) -> B? {
    guard let x = x else {
        return .None
    }
    return f(x)
}


infix operator <<~ {
associativity left
precedence 110
} //左结合的left，优先级110

func <<~<A, B>(x: [A]?, f: (A -> B?)) -> [B]? {
    guard let x = x else {
        return nil
    }
    return x.map(f).flatMap{ $0 }
}



infix operator <?> {
associativity left
precedence 100
} //左结合的left，优先级100


func <?><A, B>(f: (A? -> B)?, x: A?) -> B? {
    guard let f = f else {
        return nil
    }
    return f(x)
}


struct Member {
    let memberID: Int
    let name: String
}

func makeMember(memberID: Int) -> (name: String) -> Member {
    return { name in
        return Member(memberID: memberID, name: name)
    }
}

// key method
//func parseMember(data: [String : AnyObject]) -> Member? {
//    return makeMember <*> filter(data, key: "member_id")
//        <*> filter(data, key: "name")
//}


func keyPath<T>(path: String) -> (box: [String : AnyObject]) -> T? {
    return { box in
        return (box as NSDictionary).valueForKeyPath(path) as? T
    }
}

//let members = filter(memberJSON) <~~ keyPath("response.result.members") <<~ parseMember
//print(members)


