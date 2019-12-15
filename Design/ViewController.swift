//
//  ViewController.swift
//  Design
//
//  Created by bishoy wadie on 12/14/19.
//  Copyright © 2019 bishoy wadie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var scrollView:UIScrollView = {
     let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    lazy var mainView:UIView = {
       let mainView = UIView(frame: view.frame)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.backgroundColor = .white
        return mainView
    }()
    
    lazy var containerView :UIView = {
       let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        return containerView
    }()
    
    lazy var userImage:UIImageView = {
        let mainImage = UIImageView()
        mainImage.translatesAutoresizingMaskIntoConstraints = false
        mainImage.layer.cornerRadius = 50
        mainImage.clipsToBounds = true
        mainImage.image = UIImage(named: "images")
        return mainImage
        }()
    
    lazy var loginButton :UIButton = {
        let loginButton = UIButton()
        loginButton.layer.cornerRadius = 25
        loginButton.backgroundColor = .black
        loginButton.titleLabel?.text = "Login"
        loginButton.titleLabel?.textColor = .white
        loginButton.setTitle("Login", for: .normal)
        loginButton.clipsToBounds = true
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowRadius = 10
        loginButton.layer.shadowOpacity = 0.3
        loginButton.layer.shadowOffset = CGSize(width: 1, height: 1)
        return loginButton
        }()
    
    lazy var usernameTextField:UITextField = {
       let usernameTf = UITextField()
        usernameTf.borderStyle = .roundedRect
        usernameTf.placeholder = "Username"
        usernameTf.backgroundColor = .clear
        usernameTf.layer.borderColor = UIColor.red.cgColor
        usernameTf.layer.borderWidth = 1
        usernameTf.translatesAutoresizingMaskIntoConstraints = false
        usernameTf.layer.cornerRadius = usernameTf.frame.height*0.1
        return usernameTf
    }()
    
    lazy var passwordTextField:UITextField = {
        let passTF = UITextField()
        passTF.borderStyle = .roundedRect
        passTF.placeholder = "Password"
        passTF.backgroundColor = .clear
        passTF.layer.borderColor = UIColor.red.cgColor
        passTF.layer.borderWidth = 1
        passTF.translatesAutoresizingMaskIntoConstraints = false
        passTF.layer.cornerRadius = passTF.frame.height*0.1
        return passTF
    }()
   
    override func loadView() {
        super.loadView()
        view = mainView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.addSubview(scrollView)
        scrollView.addSubview(containerView)
        containerView.addSubview(loginButton)
        containerView.addSubview(usernameTextField)
        containerView.addSubview(userImage)
        containerView.addSubview(passwordTextField)
        
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: view.topAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ])
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: mainView.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor)
            ])
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            containerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            containerView.widthAnchor.constraint(equalTo: mainView.widthAnchor, constant: 0),
            containerView.heightAnchor.constraint(equalToConstant: 1500)
            ])
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50),
            loginButton.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 150),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: userImage.safeAreaLayoutGuide.bottomAnchor,constant:50),
            usernameTextField.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            usernameTextField.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8),
            usernameTextField.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        NSLayoutConstraint.activate([
            userImage.topAnchor.constraint(equalTo: containerView.topAnchor,constant:50),
            userImage.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            userImage.widthAnchor.constraint(equalToConstant: 100),
            userImage.heightAnchor.constraint(equalToConstant: 100)
            
            ]
        )
        
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor,constant:20),
            passwordTextField.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            passwordTextField.widthAnchor.constraint(equalTo: usernameTextField.widthAnchor, multiplier: 1),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50)
            
            
            
            ])
        // Do any additional setup after loading the view, typically from a nib.
    }



}

