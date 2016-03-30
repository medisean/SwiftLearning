//
//  ViewController.swift
//  WrappingCDemo
//
//  Created by bruce on 16/3/30.
//  Copyright © 2016年 ZouLiangming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(maxC(3,2))
        let value = Int32(22)
        let value2 = Int32(33)
        value.maxInt(value2)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

