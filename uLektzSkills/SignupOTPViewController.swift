//
//  SignupOTPViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 14/10/20.
//

import UIKit

class SignupOTPViewController: UIViewController {
    @IBOutlet weak var resendBtn: UIButton!
    @IBOutlet weak var informationLbl: UILabel!
    @IBOutlet weak var otpTxtFld: UITextField!
    
    @IBOutlet weak var continueBtn: UIButton!
    
    
    let yourAttributes: [NSAttributedString.Key: Any] = [
          .font: UIFont.systemFont(ofSize: 14),
          .foregroundColor: UIColor.link,
          .underlineStyle: NSUnderlineStyle.single.rawValue]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attributeString = NSMutableAttributedString(string: "Resend OTP",
                                                             attributes: yourAttributes)
        resendBtn.setAttributedTitle(attributeString, for: .normal)
        let myColor = UIColor.systemGray3
        otpTxtFld.layer.borderColor = myColor.cgColor
        otpTxtFld.layer.cornerRadius = 10
        otpTxtFld.layer.borderWidth = 1.0
        continueBtn.layer.cornerRadius = 10

        otpTxtFld.leftView = UIView(frame: CGRect(x: 10, y: 0, width: 15, height: otpTxtFld.frame.height))
        otpTxtFld.leftViewMode = .always
        
        let Attributes1: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.black, .font: UIFont.systemFont(ofSize: 14)]
        let Attributes2: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.red, .font: UIFont.systemFont(ofSize: 14)]
        let Attributes3: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.red, .font: UIFont.systemFont(ofSize: 14)]

        let partOne = NSMutableAttributedString(string: "One time password (OTP) has been sent to ", attributes: Attributes1)
        let partTwo = NSMutableAttributedString(string: "number", attributes: Attributes2)
        let partThree = NSMutableAttributedString(string: "Please enter the OTP and Continue.", attributes: Attributes3)
        
        partTwo.append(partOne)
        partThree.append(partTwo)
        self.informationLbl.attributedText = partTwo

        // Do any additional setup after loading the view.
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
