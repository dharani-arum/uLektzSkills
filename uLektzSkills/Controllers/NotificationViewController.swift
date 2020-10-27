//
//  NotificationViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 21/10/20.
//

import UIKit

class NotificationViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        }
        
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CartTableViewCell
        return cell
     }

   
   

}
