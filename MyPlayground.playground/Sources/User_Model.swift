
import UIKit
import PlaygroundSupport

//User Class object to store all user informaiton and accacount information

public class User_Model {
    
   public init(){
        self.ID = ""; self.name = ""; self.age = 0; self.gender = false;
        self.email = ""; self.password = ""; self.progress = ProgressArray()
        //self.progress()???? Set progress matrix
    }
    
    public init(ID: String, name: String, age: Int, gender: Bool, email: String, password: String, progress: ProgressArray){
        self.ID = ID; self.name = name; self.age = age; self.gender = gender;
        self.email = email; self.password = password;
        self.progress = progress
    }
    // ----------------MEMBER VAR---------------
    public var ID: String
    public var name: String
    public var age: Int
    
    public var gender: Bool //F-Female | T-Male
    public var email: String
    public var password: String
    
    public var progress: ProgressArray
    
    // ----------------PRINT-------------------
    public func print_user(){
        print("ID: ", self.ID);    print("Name: ", self.name);    print("Age: ", self.age);
        print("Gender: ", self.gender);    print("Email: ", self.email); print("Password: ", self.password,"\n");
    }
    
    //public func printProgress(){}
    
}
