//
//  ProfileViewController.swift
//  AIM
//
//  Created by Devin Cummins on 6/22/15.
//  Copyright (c) 2015 Devin Cummins. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController
{

    var name: String?
    var age: String?
    var sex: String?
    var location: String?


    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            nameLabel.text = name
        }
    }
    
}



    
  
        
        
