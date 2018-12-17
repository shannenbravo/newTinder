//
//  ViewController.swift
//  TinderOnCrack
//
//  Created by Shannen Bravo-Brown on 12/15/18.
//  Copyright © 2018 Shannen Bravo-Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        
        //red stack view crap
        
        let subviews = [UIColor.gray, UIColor.darkGray, UIColor.black].map {
            (color) -> UIView in
            let v = UIView()
            v.backgroundColor = color
            return v
        }
        
        let topStackView = UIStackView(arrangedSubviews: subviews)
        topStackView.distribution = .fillEqually
        super.viewDidLoad()
        topStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        let blueView = UIView()
        blueView.backgroundColor = .blue
        
        
        let buttonStackView = HomeBottomControlsStackView()
    
        let overallStackView = UIStackView(arrangedSubviews: [topStackView,blueView, buttonStackView])
        view.addSubview(overallStackView)
        overallStackView.axis = .vertical
        overallStackView.fillSuperview()
    }


}

