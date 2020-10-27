//
//  SuccessViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 15/10/20.
//

import UIKit

class SuccessViewController: UIViewController {

    @IBOutlet weak var informationLb: UILabel!
    var CheckStr = String()
    @IBOutlet weak var continueBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        continueBtn.layer.cornerRadius = 10

 if CheckStr == "signUpOTPView"
 {
    self.informationLb.text = "Your Account has been created successfully!"
 }
        else
 {
    self.informationLb.text = "Your password has been changed successfully!"

 }
        // Do any additional setup after loading the view.
        
    }
    

    @IBAction func loginBtnAct(_ sender: Any)
    {
       
        let newView = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(newView, animated:true)
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
