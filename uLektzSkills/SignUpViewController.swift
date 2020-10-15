//
//  SignUpViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 14/10/20.
//

import UIKit

class SignUpViewController: UIViewController {
    
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(SignUpViewController.tapFunction))
        termsLbl.isUserInteractionEnabled = true
        termsLbl.addGestureRecognizer(tap)
        let myColor = UIColor.systemGray3
        nameTxtFld.layer.borderColor = myColor.cgColor
        mobileTxtFld.layer.borderColor = myColor.cgColor
        emailTxtFld.layer.borderColor = myColor.cgColor

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

        let attributeString = NSMutableAttributedString(string: "Login",
                                                             attributes: yourAttributes)
             loginBtn.setAttributedTitle(attributeString, for: .normal)
    }
    @objc
        func tapFunction(sender:UITapGestureRecognizer) {
            print("tap working")
        }
}
