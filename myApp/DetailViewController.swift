//
//  DetailViewController.swift
//  myApp
//
//  Created by Agnese Mulaj on 18/07/2019.
//  Copyright © 2019 IOS. All rights reserved.
//

import UIKit
import FirebaseAuth
class DetailViewController: UIViewController {
    
   
    
    @IBAction func log(_ sender: Any) {
        
            try! Auth.auth().signOut()
            performSegue(withIdentifier: "segue2", sender: self)
        }
    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    var image = UIImage()
    var bookDesc = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.text = bookDesc
        img.image = image
        print(Auth.auth().currentUser?.email )
        
        
        func didReceiveMemoryWarning(){
            super.didReceiveMemoryWarning()
        }

        // Do any additional setup after loading the view.
    }
    @IBAction func onClickVote(_ sender: Any) {
        createAlert(title: "Message", message: "You have voted!")
        
    }
    
    
    func createAlert (title:String, message:String)
    {
    let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
    alert.dismiss(animated: true, completion:nil)
    }))
    self.present(alert, animated: true, completion: nil)
    }
    }



    





