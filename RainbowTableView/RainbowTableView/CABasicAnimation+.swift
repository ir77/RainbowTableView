//
//  CABasicAnimation+.swift
//  RainbowTableView
//
//  Created by 内村祐之 on 2017/04/02.
//  Copyright © 2017年 ucuc. All rights reserved.
//

import Foundation
import QuartzCore

extension CABasicAnimation {
    convenience init(keyPath: String = "path",
                     fromValue: CGPath,
                     toValue: CGPath,
                     duration: TimeInterval = 1.0,
                     timingFunction: CAMediaTimingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn),
                     isRemovedOnCompletion: Bool = false,
                     fillMode: String = kCAFillModeForwards) {

        self.init(keyPath: "path")
        self.fromValue = fromValue
        self.toValue = toValue
        self.duration = duration
        self.timingFunction = timingFunction
        self.isRemovedOnCompletion = false
        self.fillMode = fillMode
    }
}
