//
//  FourthViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
  
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var solutionLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func calculateButton(sender: UIButton) {
        if let number = numberField.text.toInt() {
            let fib = FibonacciAdder()
            let fibNumber = fib.numberAtIndex(number)
            solutionLabel.text = "\(fibNumber)"
        }
    }
}


