//
//  ViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 14/10/20.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    var eyeIconClick = true

    
    
    
    
    @IBOutlet weak var emailTxtFld: UITextField!
    @IBOutlet weak var passwordTxtFld: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var createAccBtn: UIButton!
    @IBOutlet weak var eyeIconBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myColor = UIColor.systemGray3
          emailTxtFld.layer.borderColor = myColor.cgColor
          passwordTxtFld.layer.borderColor = myColor.cgColor
          emailTxtFld.layer.borderWidth = 1.0
          passwordTxtFld.layer.borderWidth = 1.0
        
          emailTxtFld.layer.cornerRadius = 10.0
          passwordTxtFld.layer.cornerRadius = 10.0
          loginBtn.layer.cornerRadius = 10.0
          createAccBtn.layer.cornerRadius = 10.0
          emailTxtFld.leftView = UIView(frame: CGRect(x: 10, y: 0, width: 15, height: emailTxtFld.frame.height))
          emailTxtFld.leftViewMode = .always
        
          passwordTxtFld.leftView = UIView(frame: CGRect(x: 10, y: 0, width: 15, height: passwordTxtFld.frame.height))
          passwordTxtFld.leftViewMode = .always


        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        }

        @objc func keyboardWillShow(notification: NSNotification) {
            if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                if self.view.frame.origin.y == 0 {
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

    @IBAction func eyeHideShowAct(_ sender: Any) {
        if(eyeIconClick == true) {
            passwordTxtFld.isSecureTextEntry = false
            eyeIconBtn.setImage(UIImage(named:"eye-open"), for: .normal)
               } else {
                passwordTxtFld.isSecureTextEntry = true
                eyeIconBtn.setImage(UIImage(named: "eye-close"), for: .normal)

               }

        eyeIconClick = !eyeIconClick
    }
    @IBAction func signUpBtnAct(_ sender: Any)
    {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.present(next, animated: true, completion:nil)
    }
    
    @IBAction func loginBtnAct(_ sender: Any)
    {
         if emailTxtFld.text == "" && passwordTxtFld.text == ""
        {
            AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter Email and Password!", buttonTitle: "Ok", actionBlock: {})
        }
       else if emailTxtFld.text == ""
        {
            AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter Email Address!", buttonTitle: "Ok", actionBlock: {})
        }
        else if passwordTxtFld.text == ""
        {
            AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter Password!", buttonTitle: "Ok", actionBlock: {})
        }
        else
        {
            
        }
       
    }
}

