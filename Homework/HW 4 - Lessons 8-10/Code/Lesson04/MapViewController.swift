//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var valueField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    var array = [String]()
    var valueArray = [Int?]()
    
    let cellID = "cellID"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        valueField.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
        
        
        
        
        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. CHECK
        Accept keyboard input from the two text views. CHECK
        When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. Check
        The KEY in the dictionary should be the string in the first text view, the VALUE should be the second. CHECK
        
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. 
        Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        
        valueArray.append(self.valueField.text.toInt())
        array.append(self.textField.text)
       
//        switch array = self.valueArray {
//            
//        
//        
        
        println("I'm so Fancy, I'm headed to tokyo")
        
        tableView.reloadData()
        
        // maybe a switch statement here
        
        
        return true
        
        
        
    }
    
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
//        return valueArray.count

    
    
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID) as! UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        
        
        //cell.textLabel?.text.toInt() = valueArray[indexPath.row]
        
        
        
        return cell
    }
    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let secondcell = tableView.dequeueReusableCellWithIdentifier(cellID) as! UITableViewCell
//        secondcell.textLabel?.text = valueArray[indexPath.row]
//        
//        return secondcell
    
}
    