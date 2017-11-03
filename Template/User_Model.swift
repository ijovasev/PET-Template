//
//  User_Model.swift
//  PET
//
//  Created by liuyal on 10/27/17.
//  Copyright © 2017 TEAMX. All rights reserved.
//

import Foundation

class User_Model {
    
    public init(){
        self.ID = ""
        self.name = ""
        self.age = 0;
        self.gender = ""
        self.email = ""
        self.password = ""
        self.progress = ProgressArray()
    }
    
    public init(ID: String, name: String, age: Int, gender: String, email: String, password: String, progress: ProgressArray){
        self.ID = ID
        self.name = name
        self.age = age
        self.gender = gender
        self.email = email
        self.password = password
        self.progress = progress
    }
    
    // ----------------MEMBER VAR---------------
    var ID: String
    var name: String
    var age: Int
    var gender: String //Female | Male
    var email: String
    var password: String
    var progress: ProgressArray
    
    // ----------------PRINT-------------------
    public func print_user(){
        print("ID: ", self.ID);
        print("Name: ", self.name);
        print("Age: ", self.age);
        print("Gender: ", self.gender);
        print("Email: ", self.email);
        print("Password: ", self.password,"\n");
    }
}
