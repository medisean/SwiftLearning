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
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
    func indexIsValidForRow(row: Int, column: Int) -> Bool{
        return row >= 0 && row < rows && column >= 0 && column <= columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValidForRow(row, column: column), "Invalid row or column")
            return grid[row * columns + column]
        }
        set {
            assert(indexIsValidForRow(row, column: column), "Invalid row or column")
            grid[row * columns + column] = newValue
        }
    }
}

class SubscriptViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var matrix = Matrix(rows: 2, columns: 2)
        matrix[0, 1] = 1.5
        matrix[1, 0] = 3.2
        
        print(matrix[1, 0])

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
