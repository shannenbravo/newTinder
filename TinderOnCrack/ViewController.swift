//
//  ViewController.swift
//  TinderOnCrack
//
//  Created by Shannen Bravo-Brown on 12/15/18.
//  Copyright © 2018 Shannen Bravo-Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let topStackView = TopNavigationStackView()
    let buttonStackView = HomeBottomControlsStackView()
    let blueView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueView.backgroundColor = .blue
        setupUI()
    }
    
    
    // MARK:- Fileprivate
    
    fileprivate func setupUI() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView,blueView, buttonStackView])
        view.addSubview(overallStackView)
        overallStackView.axis = .vertical
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor)
    }


}

