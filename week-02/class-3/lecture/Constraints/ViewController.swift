//
//  ViewController.swift
//  Constraints
//
//  Created by Michael Babiy on 2/10/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.setupSquareWithCodeConstraints()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
        
        let waitQ = dispatch_queue_create("waitQ", nil)
        dispatch_async(waitQ) { () -> Void in
            usleep(1000000)
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                // Set the constant.
                self.bottomConstraint.constant = 500.0
                
                UIView.animateWithDuration(1.0, animations: { () -> Void in
                    self.view.layoutIfNeeded()
                })
                
            })
        }
    }
    
    func setupSquareWithCodeConstraints()
    {
        let square = UIView()
        square.backgroundColor = UIColor.greenColor()
        square.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(square)
        
        let squareWidth = NSLayoutConstraint(
            item: square,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .Width,
            multiplier: 1.0,
            constant: 100)
        
        let squareHeight = NSLayoutConstraint(
            item: square,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .Height,
            multiplier: 1.0,
            constant: 100)
        
        let centerX = NSLayoutConstraint(item: square, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1.0, constant: 0.0)
        let centerY = NSLayoutConstraint(item: square, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1.0, constant: 0.0)
        
        
        squareWidth.active = true
        squareHeight.active = true
        centerX.active = true
        centerY.active = true
    }

}

