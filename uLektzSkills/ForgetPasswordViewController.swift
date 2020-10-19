//
//  ForgetPasswordViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 15/10/20.
//

import UIKit
import Alamofire
import SwiftyJSON

class ForgetPasswordViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var newPassTxt: UITextField!
    @IBOutlet weak var confirmPassTxt: UITextField!
    @IBOutlet weak var passwordLbl: UILabel!
    
    var CheckStr = String()
    var nameString = String()
    var emailString = String()
    var mobileString = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        let myColor = UIColor.systemGray3
        newPassTxt.layer.borderColor = myColor.cgColor
        confirmPassTxt.layer.borderColor = myColor.cgColor
        
        newPassTxt.layer.cornerRadius = 10
        newPassTxt.layer.borderWidth = 1.0
        confirmPassTxt.layer.cornerRadius = 10
        confirmPassTxt.layer.borderWidth = 1.0
        nextBtn.layer.cornerRadius = 10
        
        newPassTxt.leftView = UIView(frame: CGRect(x: 10, y: 0, width: 15, height: newPassTxt.frame.height))
        newPassTxt.leftViewMode = .always
      
        confirmPassTxt.leftView = UIView(frame: CGRect(x: 10, y: 0, width: 15, height: confirmPassTxt.frame.height))
        confirmPassTxt.leftViewMode = .always
        
        if CheckStr == "signUpOTPView"
        {
            nextBtn.setTitle("Continue", for: .normal)
            passwordLbl.text = "Enter your password"
        }
        else{
            nextBtn.setTitle("Next", for: .normal)
            passwordLbl.text = "New Password"

        }
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        }

        @objc func keyboardWillShow(notification: NSNotification) {
            if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                if self.view.frame.origin.y == 50 {
                    self.view.frame.origin.y -= keyboardSize.height
                }
            }
        }

        @objc func keyboardWillHide(notification: NSNotification) {
            if self.view.frame.origin.y != 0 {
                self.view.frame.origin.y = 0
            }
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func saveBtnAct(_ sender: Any)
    {
        if newPassTxt.text == "" && confirmPassTxt.text == ""
       {
           AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter all fields", buttonTitle: "Ok", actionBlock: {})
       }
      else if newPassTxt.text == ""
       {
           AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter Password!", buttonTitle: "Ok", actionBlock: {})
       }
       else if confirmPassTxt.text == ""
       {
           AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter Confirm Password!", buttonTitle: "Ok", actionBlock: {})
       }
        else if newPassTxt.text != confirmPassTxt.text
        {
            AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Password mismatch!", buttonTitle: "Ok", actionBlock: {})
        }
       else
       {
        if CheckStr == "signUpOTPView"
        {
    
        
        let params = [
            "functionName":"signup",
            "name":nameString,
            "email":emailString,
            "mobile_no":mobileString,
            "password":newPassTxt.text!
            
           
            ] as [String : Any]
       
                
        Alamofire.request(Constants.LOGIN, method: .post,parameters: params,encoding: JSONEncoding.default).responseJSON { (response) in
            
            if response.result.isSuccess {
                let jsonResponse = response.result.value as! NSDictionary
                print(jsonResponse)

                let statusmsgStr = jsonResponse.value(forKey: "statusmsg")
                AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: statusmsgStr as! String, buttonTitle: "Ok", actionBlock: {})
                let next = self.storyboard?.instantiateViewController(withIdentifier: "SuccessViewController") as! SuccessViewController

                self.present(next, animated: true, completion:nil)
            }
       }
    }
        
        else
        {
            
        }
       }
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
