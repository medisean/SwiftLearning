//
//  Bicycle.swift
//  SwiftLearning
//
//  Created by bruce on 16/3/14.
//  Copyright © 2016年 ZouLiangming. All rights reserved.
//

import Foundation

class Bicycle: Vehicle {
    var hasBasket = false
    override var description: String {
        return super.description + ", bicycle des"
    }

    override func makeNoice() {
        print("bicycle noice")
    }
}