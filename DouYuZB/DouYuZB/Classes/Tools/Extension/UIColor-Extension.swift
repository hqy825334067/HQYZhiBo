//
//  UIColor-Extension.swift
//  DouYuZB
//
//  Created by 胡清雨 on 17/5/16.
//  Copyright © 2017年 胡清雨. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(r : CGFloat, g : CGFloat, b : CGFloat) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
    }
}
