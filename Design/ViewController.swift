//
//  ViewController.swift
//  Design
//
//  Created by bishoy wadie on 12/14/19.
//  Copyright © 2019 bishoy wadie. All rights reserved.
//

import UIKit

@objc protocol registerViewDelegate :class {
    @objc func imageViewTapped()
    @objc func registerButtonTapped()
}

class ViewController: UIViewController ,registerViewDelegate{
    func imageViewTapped() {
        print("image was tapped")
        
    }
    
    func registerButtonTapped() {
        print(mainView.username)
    }
    
    lazy var mainView:registerView = {
        let mainView = registerView(delegate:self)
        mainView.backgroundColor = .white
        return mainView
    }()
    
    override func loadView() {
        super.loadView()
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.delegate = self
    }

}

