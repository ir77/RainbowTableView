//
//  UIView+.swift
//  RainbowTableView
//
//  Created by 内村祐之 on 2017/04/02.
//  Copyright © 2017年 ucuc. All rights reserved.
//

import UIKit

extension UIView {
    func add(animation: CABasicAnimation) {
        self.layer.mask = CAShapeLayer()
        self.layer.mask?.add(animation, forKey: nil)
    }
}
