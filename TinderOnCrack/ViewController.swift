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
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        yellowView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        blueView.backgroundColor = .blue
        let stackView = UIStackView(arrangedSubviews: [topStackView,blueView, yellowView])
        view.addSubview(stackView)
        stackView.frame = .init(x: 0, y: 0, width: 300, height: 200)
        stackView.axis = .vertical
        stackView.fillSuperview()
    }


}

