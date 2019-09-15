//
//  ScaleSegue.swift
//  custom-segue-transition-animation-snippet
//
//  Created by Declan on 17/08/2019.
//  Copyright © 2019 Declan Conway. All rights reserved.
//

import UIKit

class ScaleSegue: UIStoryboardSegue {
    
    override func perform () {
        //Call the scale function
        scale()
    }
    
    func scale () {
        
        //Create constants
        let toViewController = self.destination
        let fromViewController = self.source
        let containerView = fromViewController.view.superview
        let originalCenter = fromViewController.view.center
        
        //Adjust the 'to' view controller
        toViewController.view.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        toViewController.view.center = originalCenter
        containerView?.addSubview(toViewController.view)
        
        //Start Animating
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
            toViewController.view.transform = CGAffineTransform.identity
        }, completion: {
            success in fromViewController.present(toViewController, animated: false, completion: nil)
        })
        
        
    }

}


class UnwindScaleSegue: UIStoryboardSegue {
    
    override func perform () {
        //Call the scale function
        scale()
    }
    
    func scale () {
        
        //Create constants
        let toViewController = self.destination
        let fromViewController = self.source
        let containerView = fromViewController.view.superview
        let originalCenter = fromViewController.view.center
        
        fromViewController.view.superview?.insertSubview(toViewController.view, at: 0)
        
        //Start Animating
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
            fromViewController.view.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        }, completion: {
            success in fromViewController.dismiss(animated: false, completion: nil)
        })
        
        
    }
}
