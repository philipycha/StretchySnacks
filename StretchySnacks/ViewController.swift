//
//  ViewController.swift
//  StretchySnacks
//
//  Created by Philip Ha on 2016-10-13.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK : PROPERTIES
    
    @IBOutlet weak var navigationBarHeight: NSLayoutConstraint!
    @IBOutlet weak var button: UIButton!
    
    var animator:UIDynamicAnimator!

    
    //MARK: FUNCTIONS
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
    }

    @IBAction func plusIconPressed(_ sender: UIButton) {
        
        animateBarHeight()
        rotateButton()
        
    }
    
    func animateBarHeight() {
        if navigationBarHeight.constant == 64 {
            
            navigationBarHeight.constant = 200
            
        } else if navigationBarHeight.constant == 200 {
            
            navigationBarHeight.constant = 64
            
        }
        
        UIView.animate(withDuration: 0.6,
                       delay: 0.0,
                       usingSpringWithDamping: 0.4,
                       initialSpringVelocity: 0.0,
                       options: [],
                       animations: {
                        
            self.view.layoutIfNeeded()
                        
            }, completion: nil)
    }
    
    func rotateButton() {
        
        UIView.animate(withDuration: 0.6,
                       delay: 0.0,
                       usingSpringWithDamping: 0.4,
                       initialSpringVelocity: 0.0,
                       options: [],
                       animations: {
                        
            self.button.transform = self.button.transform.rotated(by: CGFloat(M_PI_4))
                        
            }, completion: nil)
        
    }
}

