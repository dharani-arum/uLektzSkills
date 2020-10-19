//
//  SignUpViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 14/10/20.
//

import UIKit
import Alamofire
import SwiftyJSON


class SignUpViewController: UIViewController,UITextFieldDelegate {
    // MARK: - OUTLETS

    @IBOutlet weak var termsLbl: UILabel!
    @IBOutlet weak var nameTxtFld: UITextField!
    @IBOutlet weak var mobileTxtFld: UITextField!
    @IBOutlet weak var emailTxtFld: UITextField!
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var continueBtn: UIButton!
    
    
    let yourAttributes: [NSAttributedString.Key: Any] = [
          .font: UIFont.systemFont(ofSize: 14),
          .foregroundColor: UIColor.link,
          .underlineStyle: NSUnderlineStyle.single.rawValue]
    
    // MARK: - DIDLOAD
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tapFunction = UITapGestureRecognizer(target: self, action: #selector(SignUpViewController.tapFunction))
        termsLbl.isUserInteractionEnabled = true
        termsLbl.addGestureRecognizer(tapFunction)
        
        
        nameTxtFld.layer.borderColor = Constants.myColor.cgColor
        mobileTxtFld.layer.borderColor = Constants.myColor.cgColor
        emailTxtFld.layer.borderColor = Constants.myColor.cgColor

        nameTxtFld.layer.borderWidth = 1.0
        mobileTxtFld.layer.borderWidth = 1.0
        emailTxtFld.layer.borderWidth = 1.0

        nameTxtFld.layer.cornerRadius = 10.0
        mobileTxtFld.layer.cornerRadius = 10.0
        emailTxtFld.layer.cornerRadius = 10.0
        
        continueBtn.layer.cornerRadius = 10

        nameTxtFld.leftView = UIView(frame: CGRect(x: 10, y: 0, width: 15, height: nameTxtFld.frame.height))
        nameTxtFld.leftViewMode = .always
        mobileTxtFld.leftView = UIView(frame: CGRect(x: 10, y: 0, width: 15, height: mobileTxtFld.frame.height))
        mobileTxtFld.leftViewMode = .always
        emailTxtFld.leftView = UIView(frame: CGRect(x: 10, y: 0, width: 15, height: emailTxtFld.frame.height))
        emailTxtFld.leftViewMode = .always
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(SignUpViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)

        let attributeString = NSMutableAttributedString(string: "Login",
                                                             attributes: yourAttributes)
             loginBtn.setAttributedTitle(attributeString, for: .normal)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        }
    
    
    
    // MARK: - FUNCTIONS

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
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @objc func tapFunction(sender:UITapGestureRecognizer) {
            print("tap working")
        }
    

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    // MARK: - BUTTON ACTIONS
    
    @IBAction func signUpOTPBtnAct(_ sender: Any)
    {
        if emailTxtFld.text == "" && mobileTxtFld.text == "" && nameTxtFld.text == ""
       {
            
            AlertControl.Instance.singleButtonAlert(inViewController:self,title:"uLektzSkills",message:"Please Enter all fields!",buttonTitle:"Ok",actionBlock:{})
          
       }
        else if nameTxtFld.text == ""
        {
            AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter your Name!", buttonTitle: "Ok", actionBlock: {})
        }
      else if emailTxtFld.text == ""
       {
           AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter Email Address!", buttonTitle: "Ok", actionBlock: {})
       }
       else if mobileTxtFld.text == ""
       {
           AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter mobile Number!", buttonTitle: "Ok", actionBlock: {})
       }
       else if isValidEmail(emailTxtFld.text!) == false
       {
        AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter Valid EmailId!", buttonTitle: "Ok", actionBlock: {})
       }
       else if uLektzSkills.validate(phone: mobileTxtFld.text!) == false
       {
        AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter Valid Mobile Number!", buttonTitle: "Ok", actionBlock: {})
       }
       else
       {
        let params = [
            "functionName":"signupSendOtp",
            "email":emailTxtFld.text!,
            "mobile_no":mobileTxtFld.text!,
            "appSignature":""
           
            ] as [String : Any]
       
                
        Alamofire.request(Constants.LOGIN, method: .post,parameters: params,encoding: JSONEncoding.default).responseJSON { (response) in
            
            if response.result.isSuccess {
                //let responseJSON = JSON(response.result.value!)
                let jsonResponse = response.result.value as! NSDictionary
                print(jsonResponse)

                let statusmsgStr = jsonResponse.value(forKey: "statusmsg")
                AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: statusmsgStr as! String, buttonTitle: "Ok", actionBlock: {})
                let next = self.storyboard?.instantiateViewController(withIdentifier: "SignupOTPViewController") as! SignupOTPViewController
                next.emailStr = self.emailTxtFld.text!
                next.mobilenumberStr = self.mobileTxtFld.text!
                next.nameStr = self.nameTxtFld.text!
                self.present(next, animated: true, completion:nil)
            }
        }
        
       }
    }
}
