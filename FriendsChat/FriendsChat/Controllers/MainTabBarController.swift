//
//  MainTabBarController.swift
//  FriendsChat
//
//  Created by Valera on 7/24/20.
//  Copyright © 2020 Valera. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private let currentUser: MUser
    
    init(currentUser: MUser = MUser(username: "Test", email: "Test@email.com", description: "Test", avatarStringURL: "Test", sex: "nil", id: "123456")) {
        self.currentUser = currentUser
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let listViewController = ListViewController(currentUser: currentUser)
        let peopleViewController = PeopleViewController(currentUser: currentUser)
        tabBar.tintColor = #colorLiteral(red: 0.5568627451, green: 0.3529411765, blue: 0.968627451, alpha: 1)
        guard let peopleImage = UIImage(systemName: "person.2",
                                        withConfiguration: UIImage.SymbolConfiguration(weight: .bold)) else { return }
        guard let convImage = UIImage(systemName: "bubble.left.and.bubble.right",
                                      withConfiguration: UIImage.SymbolConfiguration(weight: .bold)) else { return }
        viewControllers = [generateNavigationController(rootViewController: peopleViewController, title: "People", image: peopleImage),
                           generateNavigationController(rootViewController: listViewController, title: "Chats", image: convImage),
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController:  rootViewController)
        navigationVC.tabBarItem.title =  title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
