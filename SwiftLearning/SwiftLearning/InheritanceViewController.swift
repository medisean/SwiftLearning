//
//  InheritanceViewController.swift
//  SwiftLearning
//
//  Created by bruce on 16/3/14.
//  Copyright © 2016年 ZouLiangming. All rights reserved.
//

import UIKit

class InheritanceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let by = Bicycle()
        by.speed = 2.3
        print(by.description)
        print(by.makeNoice())

        let at = AutomaticCar()
        at.speed = 32.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
