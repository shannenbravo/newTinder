//
//  CardView.swift
//  TinderOnCrack
//
//  Created by Shannen Bravo-Brown on 12/17/18.
//  Copyright © 2018 Shannen Bravo-Brown. All rights reserved.
//

import UIKit

class CardView: UIView {
    // set temp image on card view
    fileprivate let imageView = UIImageView(image: #imageLiteral(resourceName: "pictwo"))
    
    //have to be overrdien
    override init(frame: CGRect) {
        super.init(frame: frame)
        //makes it curve
        layer.cornerRadius = 10
        //make the curve show
        clipsToBounds = true
        //add the image to the ui
        addSubview(imageView)
        //the anchores
        imageView.fillSuperview()
        
        //adding gestures
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
        addGestureRecognizer(panGesture)
    }
    
  
    
    
    @objc fileprivate func handlePan(gesture: UIPanGestureRecognizer){
        
    
        switch gesture.state {
        //if the state of the card view changed
        case .changed:
            handleChangedSate(gesture)
        //after the click had finished
        case .ended:
            handleEnded()
        default:
            ()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func handleEnded() {
        //butit in function to animate the ui
        UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.1, options: .curveEaseOut, animations: {
            //go back to where it was before
            self.transform = .identity
        }) { (_) in
        }
    }
    
    fileprivate func handleChangedSate(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: nil)
        //tracks the pan 
        self.transform = CGAffineTransform(translationX: translation.x, y: translation.y)
    }


}
