//
//  TopNavigationStackView.swift
//  TinderOnCrack
//
//  Created by Shannen Bravo-Brown on 12/17/18.
//  Copyright © 2018 Shannen Bravo-Brown. All rights reserved.
//

import UIKit

class TopNavigationStackView: UIStackView {
    let settingButton = UIButton(type: .system)
    let messageButton = UIButton(type: .system)
    let fireImage = UIImageView(image: #imageLiteral(resourceName: "app_icon"))
    

    override init(frame: CGRect) {
         super.init(frame: frame)
        fireImage.contentMode = .scaleAspectFit
        settingButton.setImage(#imageLiteral(resourceName: "top_left_profile").withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.setImage(#imageLiteral(resourceName: "top_right_messages").withRenderingMode(.alwaysOriginal), for: .normal)
        [settingButton, UIView(),  fireImage, UIView(),  messageButton].forEach { (v) in
            addArrangedSubview(v)
        }
        
        heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        distribution = .equalCentering
        
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
