//
//  SubscriptViewController.swift
//  SwiftLearning
//
//  Created by bruce on 16/3/14.
//  Copyright © 2016年 ZouLiangming. All rights reserved.
//

import UIKit

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows    = rows
        self.columns = columns
        self.grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
    func isValidOfRow(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(isValidOfRow(row, column: column), "Invalid row or column")
            return grid[row * columns + column]
        }
        set {
            assert(isValidOfRow(row, column: column), "Invalid row or column")
            grid[row * columns + column] = newValue
        }
    }
}

class SubscriptViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var t = Matrix(rows: 2, columns: 3)
        t[1, 0] = 1.0
        t[1, 2] = 3.1

        print(t[1, 2])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
