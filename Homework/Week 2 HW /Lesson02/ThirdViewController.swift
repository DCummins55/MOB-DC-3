//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculateButton(sender: UIButton) {
        var number = numberField.text.toInt()
        
        
        if let number = number {
            var restValue = number % 2
            
            resultLabel.text = restValue == 0 ? "even" : "odd"
        
            
        }
 
        
        
        
    }
    
    
    
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.
    //
    //            if restValue == 0 {
    //                resultLabel.text = "even"
    //            } else {
    //                resultLabel.text = "Odd"
    //            }

*/
}
