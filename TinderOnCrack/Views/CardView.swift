//
//  CardView.swift
//  TinderOnCrack
//
//  Created by Shannen Bravo-Brown on 12/17/18.
//  Copyright © 2018 Shannen Bravo-Brown. All rights reserved.
//

import UIKit

class CardView: UIView {
    
    fileprivate let imageView = UIImageView(image: #imageLiteral(resourceName: "profilepic"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 10
        clipsToBounds = true 
        addSubview(imageView)
        imageView.fillSuperview()
        
        //adding gestures
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
        addGestureRecognizer(panGesture)
    }
    
    @objc fileprivate func handlePan(gesture: UIPanGestureRecognizer){
        
        let translation = gesture.translation(in: nil)
            self.transform = CGAffineTransform(translationX: translation.x, y: translation.y)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


}
