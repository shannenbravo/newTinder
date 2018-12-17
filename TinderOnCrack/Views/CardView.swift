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
            handleEnded(gesture)
        default:
            ()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func handleEnded(_ gesture: UIPanGestureRecognizer) {
        let threshold: CGFloat = 100
        let shouldDissmissCard = gesture.translation(in: nil).x > threshold
        
        //butit in function to animate the ui
        UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.1, options: .curveEaseOut, animations: {
            
            if shouldDissmissCard{
                
                self.frame = CGRect(x: 1000, y: 0, width: self.frame.width, height: self.frame.height)
                
            }else{
                
                //go back to where it was before
                self.transform = .identity
            }
    
        }) { (_) in
            
            self.transform = .identity
            self.frame = CGRect(x: 0, y: 0, width: self.superview!.frame.width, height: self.superview!.frame.height)
        }
    }
    
    fileprivate func handleChangedSate(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: nil)
        //convert radians to degrees
        
        //make totation go left adn right and slow it down by divding
        let degrees: CGFloat = translation.x / 20
        let angle = degrees * .pi / 180
        //roatation
        let rotationalTranfermation = CGAffineTransform(rotationAngle: angle)
        
        //makes it translate and roataes
        self.transform = rotationalTranfermation.translatedBy(x: translation.x, y: translation.y)
        
    }


}
