//
//  AccountViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 21/10/20.
//

import UIKit

class AccountViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var settingArray = [String]()
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var emailIdLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        settingArray = ["Settings","About","Terms of services","Privacy policy","Takedown policy","Security","Share the uLektz skills Apps"]


        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2
        profileImageView.clipsToBounds = true
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingArray.count
        }
        
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CartTableViewCell
        
      
        cell.accountLbl.text = self.settingArray[indexPath.row]

            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if indexPath.row == 0
            {
                let next = self.storyboard?.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
                  
                self.navigationController?.pushViewController(next, animated:true)
            }
            print("You tapped cell number \(indexPath.row).")
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
