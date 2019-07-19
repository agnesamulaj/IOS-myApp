//
//  ViewController.swift
//  myApp
//
//  Created by Agnese Mulaj on 06/07/2019.
//  Copyright © 2019 IOS. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var actiionButton: UIButton!
    @IBAction func action(_ sender: UIButton) {
    
        if emailText.text != "" && passwordText!.text != ""
         {
            if segmentControl.selectedSegmentIndex == 0
            {
                Auth.auth().signIn(withEmail: self.emailText.text!, password: self.passwordText.text!, completion: { (user, error) in
                 if user != nil
                 {
                    //signin succesfully
                    self.performSegue(withIdentifier: "segue", sender: self)
                 }
                 else
                 {
                   print ("Error")
                 }
                })
            }
            else //sign up user
            {
                Auth.auth().createUser(withEmail: self.emailText.text!, password: self.passwordText.text!, completion: { (user, error) in
                    if user != nil{
                        self.performSegue(withIdentifier: "segue", sender: self)
                    }
                    else {
                       print("Error")
                    }
                })
            }
        }
    
}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
   

}


