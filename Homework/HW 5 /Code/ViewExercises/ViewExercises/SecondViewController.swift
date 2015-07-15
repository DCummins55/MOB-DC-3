//
//  SecondViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class SecondViewController: ExerciseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 2"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen. 
        They must stay in their respective corners on device rotation. 
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view
        */
        
        let square1 = UIView ()
        square1.setTranslatesAutoresizingMaskIntoConstraints(false)
        square1.backgroundColor = UIColor.blueColor()
        exerciseView.addSubview(square1)
        
        let square2 = UIView ()
        square2.setTranslatesAutoresizingMaskIntoConstraints(false)
        square2.backgroundColor = UIColor.blueColor()
        exerciseView.addSubview(square2)
        
        let square3 = UIView ()
        square3.setTranslatesAutoresizingMaskIntoConstraints(false)
        square3.backgroundColor = UIColor.blueColor()
        exerciseView.addSubview(square3)
        
        let square4 = UIView ()
        square4.setTranslatesAutoresizingMaskIntoConstraints(false)
        square4.backgroundColor = UIColor.blueColor()
        exerciseView.addSubview(square4)
        
    
    
        let metrics = ["width": 20, "hieght": 20]
        let views = [
            "square1": square1,
            "square2": square2,
            "square3": square3,
            "square4": square4]
        
        let square1widthConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|[square1(width)]",
            options: NSLayoutFormatOptions.AlignAllLeft,
            metrics: metrics,
            views: views)
        
        let square1hieghtConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|[square1(hieght)]",
            options: NSLayoutFormatOptions.AlignAllTop,
            metrics: metrics,
            views: views)
        
        exerciseView.addConstraints(square1widthConstraints)
        exerciseView.addConstraints(square1hieghtConstraints)

        
        
        
        let square2widthConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:[square2(width)]|",
            options: NSLayoutFormatOptions.AlignAllRight,
            metrics: metrics,
            views: views)
        
        let square2hieghtConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|[square2(hieght)]",
            options: NSLayoutFormatOptions.AlignAllTop,
            metrics: metrics,
            views: views)
        
        exerciseView.addConstraints(square2widthConstraints)
        exerciseView.addConstraints(square2hieghtConstraints)
        
        
        
        let square3widthConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|[square3(width)]",
            options: NSLayoutFormatOptions.AlignAllLeft,
            metrics: metrics,
            views: views)
        
        let square3hieghtConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:[square3(hieght)-(44-)]|",
            options: NSLayoutFormatOptions.AlignAllBottom,
            metrics: metrics,
            views: views)
        
        exerciseView.addConstraints(square2widthConstraints)
        exerciseView.addConstraints(square2hieghtConstraints)
        
       
        
        
        
        let square4widthConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:[square4(width)]|",
            options: NSLayoutFormatOptions.AlignAllRight,
            metrics: metrics,
            views: views)
        
        let square4hieghtConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:[square4(hieght)-(44)-]|",
            options: NSLayoutFormatOptions.AlignAllBottom,
            metrics: metrics,
            views: views)
        
        exerciseView.addConstraints(square2widthConstraints)
        exerciseView.addConstraints(square2hieghtConstraints)

        
        
        
        
        
        
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("three", sender: nil)
    }
}
