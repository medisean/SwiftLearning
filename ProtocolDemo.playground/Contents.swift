//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// this is protocol demo

// 1. Simple protocol, notice keyword self
protocol EventLike {
    var date: NSDate { get }
    var title: String { get }
    func overlapsWith(other: Self) -> Bool
}

// 1) use struct to implementation a protocol
struct Event: EventLike {
    let date: NSDate
    let title: String
    func overlapsWith(other: Event) -> Bool {
        return true
    }
}

// 2) use class to implementation a protocol
class CoreEvent: EventLike {
    let date = NSDate()
    let title = "core event"
    func overlapsWith(other: CoreEvent) -> Bool {
        return true
    }
}

// 1) - 2) test and print

let event = Event(date: NSDate(), title: "event")
print(event.date)
print(event.title)

let coreEvent = CoreEvent()
print(coreEvent.title)





