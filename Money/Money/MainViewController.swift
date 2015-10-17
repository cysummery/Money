//
//  ViewController.swift
//  Money
//
//  Created by  李俊 on 15/10/17.
//  Copyright © 2015年  李俊. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    addChildViewController(PropertyTableViewController(), title: "资产", imageName: "property")
    addChildViewController(BillTableViewController(), title: "账单", imageName: "bill")
    addChildViewController(StatisticsTableViewController(), title: "统计", imageName: "statistics")
    addChildViewController(MeTableViewController(), title: "我", imageName: "me")
  }
  
  private func addChildViewController(childController: UIViewController, title: String, imageName: String) {
    
    childController.title = title
    childController.tabBarItem.image = UIImage(named: imageName)
    addChildViewController(UINavigationController(rootViewController: childController))
  }
  
  
}

