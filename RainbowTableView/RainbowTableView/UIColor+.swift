//
//  UIColor+.swift
//  RainbowTableView
//
//  Created by 内村祐之 on 2017/04/01.
//  Copyright © 2017年 ucuc. All rights reserved.
//

import UIKit

extension UIColor {
    static let rainbow = [
        UIColor(hex: 0xE60012), // red
        UIColor(hex: 0xF39800), // orange
        UIColor(hex: 0xFFF100), // yellow
        UIColor(hex: 0x009944), // green
        UIColor(hex: 0x0068B7), // blue
        UIColor(hex: 0x1D2088), // indigo
        UIColor(hex: 0x920783)  // purple
    ]
}

extension UIColor {
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
        let r = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((hex & 0x00FF00) >> 8) / 255.0
        let b = CGFloat(hex & 0x0000FF) / 255.0
        self.init(red: r, green: g, blue: b, alpha: alpha)
    }
}
