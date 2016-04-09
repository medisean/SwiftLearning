//
//  AutomaticCar.swift
//  SwiftLearning
//
//  Created by bruce on 16/3/15.
//  Copyright © 2016年 ZouLiangming. All rights reserved.
//

import Foundation

class AutomaticCar: Vehicle {
    var gear = 1
    override var speed: Double {
        didSet {
            gear = Int(speed / 10.0) + 1
            print(gear)
        }
    }
}
