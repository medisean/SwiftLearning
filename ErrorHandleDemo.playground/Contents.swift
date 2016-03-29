//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// this is error handle demo

enum FileError: ErrorType {
    case FileDoesNotExist
    case NoPermission
}

func contentsOfFile(fileName: String) throws -> String {
    throw FileError.FileDoesNotExist
}

do {
    let result = try contentsOfFile("input.txt")
    print(result)
} catch FileError.FileDoesNotExist {
    print("file does not exist")
} catch {
    print("other errors")
}



class People {
    var name: String?
    
    enum People {
        case COOl
    }
}


























