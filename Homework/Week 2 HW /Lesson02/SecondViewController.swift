//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func addButton(sender: UIButton) {
        var number = numberField.text.toInt()
        
        if let number = number {
           var restValue = "\(number + number)"
            
        
            resultLabel.text = restValue
            
        
            
        }
        
                }
    



    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
//    
//    @IBOutlet weak var numberField: UITextField!
//    @IBOutlet weak var resultLabel: UILabel!
//    
//    @IBAction func calculateButton(sender: UIButton) {
//        var number = numberField.text.toInt()
//        
//        
//        if let number = number {
//            var restValue = number % 2
//            
//            resultLabel.text = restValue == 0 ? "even" : "odd
            
            //
            //            if restValue == 0 {
            //                resultLabel.text = "even"
            //            } else {
            //                resultLabel.text = "Odd"
            //            }

}