//
//  CustomTabBarController.swift
//  newFile
//
//  Created by Gag Mkrtchyan on 28.03.21.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nav1 = generateController(vc: FirstViewController(), title: "First")
        let nav2 = generateController(vc: SecondViewController(), title: "Second")
        let nav3 = generateController(vc: ThirdViewController(), title: "Third")
        
        UINavigationBar.appearance().prefersLargeTitles = false
        
        viewControllers = [nav1, nav2, nav3]
    }
    
    private func generateController(vc: UIViewController, title: String) -> UINavigationController {
        vc.navigationItem.title = title
        let navController = UINavigationController(rootViewController: vc)
        navController.title = title
        
        return navController
    }
}
