//
//  MainViewController.swift
//  DouYuZB
//
//  Created by 胡清雨 on 17/5/16.
//  Copyright © 2017年 胡清雨. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVC("Home")
        addChildVC("Live")
        addChildVC("Follow")
        addChildVC("Profille")
    }
    
    
    private func addChildVC(_ storyName : String) {
        // 1.通过storyboard获取控制器
        let childVC = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        
        // 2.将childVC作为子控制器
        addChildViewController(childVC)
    }
}
