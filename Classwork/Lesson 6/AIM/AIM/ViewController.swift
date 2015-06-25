//
//  ViewController.swift
//  AIM
//
//  Created by Devin Cummins on 6/22/15.
//  Copyright (c) 2015 Devin Cummins. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var sexfield: UITextField!
    @IBOutlet weak var locationField: UITextField!
    
    
    
    @IBOutlet weak var clearbutton: UIButton!
    @IBOutlet weak var submitbutton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setuptextfield()
        setupButtons()
       
    }
    
        func setuptextfield() {
        
        nameField.placeholder = "Name"
        ageField.placeholder = "Age"
        sexfield.placeholder = "Sex"
        locationField.placeholder = "Location"
            
            formatTextField(nameField)
            formatTextField(ageField)
            formatTextField(sexfield)
            formatTextField(locationField)
        }
        
    
    func formatTextField(textField: UITextField) {
        textField.keyboardType = (textField == ageField) ? .NumberPad : .ASCIICapable
        textField.textColor = (textField == sexfield) ? UIColor.redColor() : UIColor.blueColor()
        
        
    }
    
    
    
    func setupButtons() {
        clearbutton.setTitle("Clear", forState: UIControlState.Normal)
        submitbutton.setTitle("Submit", forState: UIControlState.Normal)
        
        
        
    }
    
  
    @IBAction func clearAction(sender: UIButton) {
       nameField.text = ""
        ageField.text = ""
        sexfield.text = ""
        locationField.text = ""
        
        
        
        
        
    }
    @IBAction func submitActions(sender: UIButton) {
    }

        
    
   
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        println("prepare for seque")
        if segue.identifier == "showProfile" {
            let destinationVC = segue.destinationViewController as! ProfileViewController
            destinationVC.age = ageField.text
            destinationVC.name = nameField.text
            destinationVC.sex = sexfield.text
            destinationVC.location = locationField.text
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

