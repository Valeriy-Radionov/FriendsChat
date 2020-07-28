//
//  WatingChatCell.swift
//  FriendsChat
//
//  Created by Valera on 7/27/20.
//  Copyright © 2020 Valera. All rights reserved.
//

import UIKit

class WatingChatCell: UICollectionViewCell, SelfConfiguringCell {

    static var reuseId: String = "WatingChatCell"
    let friendImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        self.layer.cornerRadius = 4
        self.clipsToBounds = true
        setupConstraints()
    }
    
    func configure<U>(with value: U) where U : Hashable {
        guard let chat: MChat = value as? MChat else { return }
        friendImageView.image = UIImage(named: chat.userImageString)
    }
    
    private func setupConstraints() {
        friendImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(friendImageView)
        
        NSLayoutConstraint.activate([
            friendImageView.topAnchor.constraint(equalTo: self.topAnchor ),
            friendImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            friendImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            friendImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: SwiftUI

import SwiftUI

struct WatingCellVCProvider: PreviewProvider  {
    
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let  tabBarVC = MainTabBarController()
        
        func makeUIViewController(context: Context) -> UIViewController {
            return tabBarVC
        }
        
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
            
        }
    }
    
}
