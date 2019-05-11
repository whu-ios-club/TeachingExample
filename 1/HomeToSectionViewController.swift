//
//  HomeToSectionViewController.swift
//  1
//
//  Created by Ezreal on 2019/5/11.
//  Copyright © 2019年 Ezreal. All rights reserved.
//

import UIKit

class HomeToSectionViewController: NSObject, UIViewControllerAnimatedTransitioning {
    let duration = 3.0
    var presenting = true
    var originFrame = CGRect.zero
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        let toView = transitionContext.view(forKey: .to)!
        let presentView = presenting ? toView : transitionContext.view(forKey: .from)!
        
        let initialFrame = presenting ? originFrame : presentView.frame
        let finalFrame = presenting ? presentView.frame : originFrame
        
        let xScaleFactor = presenting ? initialFrame.width / finalFrame.width : finalFrame.width / initialFrame.width
        let yScaleFactor = presenting ? initialFrame.height / finalFrame.height : finalFrame.height / initialFrame.height

        let scaleTransform = CGAffineTransform(scaleX: xScaleFactor, y: yScaleFactor)
        
        if presenting {
            presentView.transform = scaleTransform
            presentView.center = CGPoint(x: initialFrame.midX, y: initialFrame.midY)
            presentView.clipsToBounds = true
            presentView.layer.cornerRadius = 20 / xScaleFactor
        }
        
        containerView.addSubview(toView)
        containerView.bringSubviewToFront(presentView)
        toView.alpha = 0.0
        
        UIView.animate(withDuration: duration, animations: {
            toView.alpha = 1.0
            presentView.transform = self.presenting ? CGAffineTransform.identity : scaleTransform
            presentView.center = CGPoint(x: finalFrame.midX, y: finalFrame.midY)
        }, completion: { _ in
            transitionContext.completeTransition(true)
        })

        
    }
    

}
