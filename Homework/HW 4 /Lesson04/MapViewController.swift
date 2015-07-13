//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var valueField: UITextField!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var array = [[String: String]]()
    
    
    let cellID = "cellID"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameField.delegate = self
        valueField.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellID)
//        
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyBoardShow", name: UIKeyboardWillShowNotification, object: nil)
//        
//    }
//    
//    func keyBoardShow(notification: NSNotification) {
    
}

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        
        if textField == nameField {
            
            nameField.resignFirstResponder()
            valueField.becomeFirstResponder()
        } else {
            valueField.resignFirstResponder()
            
            array.append(["name": nameField.text, "location": valueField.text])
            
            tableView.reloadData()
            
            nameField.text = ""
            valueField.text = ""
     
        
        println("execute")
        
            
           }    
        return true
        
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellID", forIndexPath: indexPath)
        as! UITableViewCell
        
        
//        let cell = tableView.dequeueReusableCellWithIdentifier("cellID", forIndexPath) as! UITableViewCell
        
        let currentDict = array[indexPath.row]
        cell.textLabel?.text = currentDict["name"]
        cell.detailTextLabel?.text = currentDict["location"]
        
        
        return cell
    }
        
        
        
        
        
        
        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */
    
}
