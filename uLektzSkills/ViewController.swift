//
//  ViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 14/10/20.
//

import UIKit

class ViewController: UIViewController {
    
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
    
}

