//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// insert sort
func insertionSort(inout arr: [Int]) -> [Int] {
    for i in 1 ..< arr.count {
        let key = arr[i]
        var j = i - 1
        while j >= 0 && arr[j] > key {
            arr[j + 1] = arr[j]
            j -= 1
        }
        arr[j + 1] = key
    }
    return arr
}

// bubble sort

func bubbleSort(inout arr: [Int]) -> [Int] {
    for i in 0 ..< arr.count {
        for j in 0 ..< arr.count - 1 - i {
            if arr[j] > arr[j + 1] {
                let temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
    return arr
}

// selection sort
func selectionSort(inout arr: [Int]) -> [Int] {
    for i in 0 ..< arr.count - 1 {
        var min = i
        for j  in i+1 ..< arr.count {
            if arr[min] > arr[j] {
                min = j
            }
        }
        let temp = arr[min]
        arr[min] = arr[i]
        arr[i] = temp
    }
    return arr
}

// quick sort
func quickSort(inout arr: [Int]) -> [Int] {
    func partition(p: Int, _ r: Int) -> Int {
        var i = p - 1
        let key = arr[r]
        for j in p ..< r {
            if arr[j] < key {
                i = i + 1
                let temp = arr[j]
                arr[j] = arr[i]
                arr[i] = temp
            }
        }
        arr[r] = arr[i + 1]
        arr[i + 1] = key
        return i + 1
    }
    
    func internalQuickSort(p: Int, _ r: Int) {
        if p < r {
            let q = partition(p, r)
            internalQuickSort(p, q - 1)
            internalQuickSort(q + 1, r)
        }
    }
    internalQuickSort(0, arr.count - 1)
    return arr
}


