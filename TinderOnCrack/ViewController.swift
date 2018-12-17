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
    let cardsDeckViews = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupdummyCards()
    }
    
    fileprivate func setupdummyCards() {
        print("set up dummy cards")
        let cardView = CardView()
        cardsDeckViews.addSubview(cardView)
        cardView.fillSuperview()
        
    }
    
    
    // MARK:- Fileprivate
    
    fileprivate func setupUI() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView,cardsDeckViews, buttonStackView])
        view.addSubview(overallStackView)
        overallStackView.axis = .vertical
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor)
        overallStackView.isLayoutMarginsRelativeArrangement = true
        overallStackView.layoutMargins = .init(top: 0, left: 12, bottom: 0, right: 12)
    }


}

