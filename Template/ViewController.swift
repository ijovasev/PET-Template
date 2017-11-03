//
//  ViewController.swift
//  Template
//
//  Created by J.L on 2017-10-30.
//  Copyright © 2017 J.L. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
    }
    
    var ref: DatabaseReference!
    
    
}
