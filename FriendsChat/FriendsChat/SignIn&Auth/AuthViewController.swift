//
//  ViewController.swift
//  FriendsChat
//
//  Created by Valera on 7/17/20.
//  Copyright © 2020 Valera. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {
    
    let logoImageView = UIImageView(image: #imageLiteral(resourceName: "fiendsChat"), contentMode: .scaleAspectFit)
    
    let googleLabel = UILabel(text: "Get started with")
    let emaileLabel = UILabel(text: "Or sign up with")
    let alreadyOnBoardleLabel = UILabel(text: "Already on board")
    
    let emailButton = UIButton(title: "Email", backgroundColor: .buttonDark(), titleColor: .white)
    let loginButton = UIButton(title: "Login", isShadow: true, backgroundColor: .white, titleColor: .buttonRed())
    let googleButton = UIButton(title: "Google", isShadow: true, backgroundColor: .white, titleColor: .black)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        googleButton.customizeGoogleButton()
        view.backgroundColor = .white
        setupConstraints()
    }
    
}

//MARK: Setup Constraints

extension AuthViewController {
    
    private func setupConstraints() {
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let googleView = ButtonFormView(label: googleLabel, button: googleButton)
        let emailView = ButtonFormView(label: emaileLabel, button: emailButton)
        let loginView = ButtonFormView(label: alreadyOnBoardleLabel, button: loginButton)
        
        let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axis: .vertical, spacing: 30)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        view.addSubview(logoImageView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo:  logoImageView.bottomAnchor, constant: 90),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
            
        ])
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 90),
            logoImageView.widthAnchor.constraint(equalToConstant: 200)
        ])
        
    }
}

// MARK: SwiftUI

import SwiftUI

struct AuthVCProvider: PreviewProvider  {
    
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = AuthViewController()
        
        func makeUIViewController(context: Context) -> UIViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
            
        }
    }
    
}

