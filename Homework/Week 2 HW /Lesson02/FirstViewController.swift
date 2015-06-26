//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController
{
    
    
//      TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var textGoesHere: UILabel!
    

    @IBAction func generateButton(sender: AnyObject) {
     //   helloWorld()
       // greetUser()
        whatCanYouDo()
        
        
        
    }
 
    
    func helloWorld () {
        textGoesHere.text = "hello world"
    }
    
    
    func greetUser () {
        
        var name = nameField.text
        var age = ageField.text
        
        textGoesHere.text = "hello \(name), your age is \(age)"
        
        
        
    }
    
    func whatCanYouDo () {
        var age = ageField.text.toInt()
        
        if let age = age {
            
            if age >= 21 {
                textGoesHere.text = "you can drink"
            } else if age >= 18 && age < 21 {
                textGoesHere.text = "you can vote"
            } else if age > 16 {
                textGoesHere.text = "you can drive"
            }
            
            
        } else {
            textGoesHere.text = "Not valid age"
        }
        
        

    }
    
    
    
//    if let nameField = String?
//    textGoesHere.tes
//   
  
//        
//        if let name = name {
//            nameLabel.text = ("hello, \(nameField))
//        }
//        
//        if let age = age {
//            ageLabel.text = ("your age is \(ageFeild))
    
        




    
    
    /*

    
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
     println("Hello, \(name), you are \(age)")
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */

}