//
//  CHelper+Extension.swift
//  WrappingCDemo
//
//  Created by bruce on 16/3/30.
//  Copyright © 2016年 ZouLiangming. All rights reserved.
//

import Foundation

extension Int32 {
    func maxInt(value: Int32) -> Int32 {
        return maxC(Int32(self), value)
    }
}