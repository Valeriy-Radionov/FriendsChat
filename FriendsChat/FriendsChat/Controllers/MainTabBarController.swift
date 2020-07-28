//
//  MainTabBarController.swift
//  FriendsChat
//
//  Created by Valera on 7/24/20.
//  Copyright © 2020 Valera. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let listViewController = ListViewController()
        let peopleViewController = PeopleViewController()
        tabBar.tintColor = #colorLiteral(red: 0.5568627451, green: 0.3529411765, blue: 0.968627451, alpha: 1)
        guard let peopleImage = UIImage(systemName: "person.2",
                                        withConfiguration: UIImage.SymbolConfiguration(weight: .bold)) else { return }
        guard let convImage = UIImage(systemName: "bubble.left.and.bubble.right",
                                      withConfiguration: UIImage.SymbolConfiguration(weight: .bold)) else { return }
        viewControllers = [generateNavigationController(rootViewController: peopleViewController, title: "People", image: peopleImage),
                           generateNavigationController(rootViewController: listViewController, title: "Conversations", image: convImage),
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController:  rootViewController)
        navigationVC.tabBarItem.title =  title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
