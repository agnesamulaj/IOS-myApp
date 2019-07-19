//
//  ViewController2.swift
//  myApp
//
//  Created by Agnese Mulaj on 06/07/2019.
//  Copyright © 2019 IOS. All rights reserved.
//

import UIKit
import FirebaseAuth


class ViewController2: UIViewController{
    
    var books = ["Harry Potter 1",
                 "Harry Potter 2",
                 "Harry Potter 3",
                 "Harry Potter 4",
                 "Harry Potter 5",
                 "Harry Potter 6",
                 "Harry Potter 7"
                ]
    var bookDesc = [
        "Harry Potter and the Sorcerer’s Stone ",
        "Harry Potter and the Chamber of Secrets",
        "Harry Potter and the Prisoner of Azkaban",
        "Harry Potter and the Goblet of Fire",
        "Harry Potter and the Order of the Phoenix",
        "Harry Potter and the Half-Blood Prince",
        "Harry Potter and the Deathly Hallows"]
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
    }

}

extension ViewController2 : UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
        cell?.lbl.text = books[indexPath.row]
        cell?.img.image = UIImage(named: books[indexPath.row])
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        vc?.image = UIImage(named: books[indexPath.row])!
        vc?.bookDesc = bookDesc[indexPath.row]
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}






