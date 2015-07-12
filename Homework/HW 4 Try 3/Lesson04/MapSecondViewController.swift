//
//  MapSecondViewController.swift
//  Lesson04
//
//  Created by Devin Cummins on 7/12/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit

class MapSecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate  {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var valueField: UITextField!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var location = [[String: String]]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameField.delegate = self
        valueField.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        
        if textField == nameField {
            nameField.resignFirstResponder()
            valueField.becomeFirstResponder()
        } else {
            valueField.resignFirstResponder()
            
            
            println("Please Work")
            location.append(["name": nameField.text, "area": valueField.text])
            
            tableView.reloadData()
            
            valueField.text = ""
            nameField.text = ""
            
            
        }
        
        return true
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return location.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("locationCell", forIndexPath: indexPath) as! UITableViewCell
        
        let currentLocation = location[indexPath.row]
        cell.textLabel?.text = currentLocation["name"]
        cell.detailTextLabel?.text = currentLocation["area"]
        
        
        return cell
        
    }
    
    
}


