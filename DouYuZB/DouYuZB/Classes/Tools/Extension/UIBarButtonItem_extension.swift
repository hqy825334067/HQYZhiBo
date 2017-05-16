//
//  UIBarButtonItem_extension.swift
//  DouYuZB
//
//  Created by 胡清雨 on 17/5/16.
//  Copyright © 2017年 胡清雨. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    /*
    class func createItem (imageName : String, highImageName : String, size : CGSize) -> UIBarButtonItem{
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: highImageName), for: .highlighted)
        
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        
        return UIBarButtonItem(customView: btn)
    }
     */
    
    // 便利构造函数 1> convenience开头 2> 在构造函数中必须明确调用一个设计的构造函数(self)
    convenience init(imageName : String, highImageName : String = "", size : CGSize = CGSize.zero) {
        // 1. 创建UIButton
        let btn = UIButton()
        
        // 2.设置button的图片
        btn.setImage(UIImage(named: imageName), for: .normal)
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        
        // 3.设置button的尺寸
        if size == CGSize.zero {
            btn.sizeToFit()
        }else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        
        // 4.创建UIBarButtonItem
        self.init(customView : btn)
    }
}
