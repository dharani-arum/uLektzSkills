//
//  ForgetEmailMobileViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 19/10/20.
//

import UIKit
import Alamofire
import SwiftyJSON

class ForgetEmailMobileViewController: UIViewController {

    @IBOutlet weak var continueBtn: UIButton!
    @IBOutlet weak var textFld: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textFld.layer.borderColor = Constants.myColor.cgColor
        textFld.layer.borderWidth = 1.0
        textFld.layer.cornerRadius = 10.0
        
        textFld.leftView = UIView(frame: CGRect(x: 10, y: 0, width: 15, height: textFld.frame.height))
        textFld.leftViewMode = .always
        continueBtn.layer.cornerRadius = 10.0
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

    @IBAction func continueBtnAct(_ sender: Any)
    {
        if textFld.text == ""
         {
             AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter Email or MobileNumber!", buttonTitle: "Ok", actionBlock: {})
         }
        else if isValidEmail(self.textFld.text!) == false
        
        {
            AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter valid Email or MobileNumber!", buttonTitle: "Ok", actionBlock: {})
        }
        else if uLektzSkills.validate(phone: self.textFld.text!)
        {
            AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter valid Email or MobileNumber!", buttonTitle: "Ok", actionBlock: {})
        }
        else
        {
            let params = [
                
                "functionName":"forgotpasswordSendOtp",
                "username":textFld.text!,
                "appSignature":"FA+9qCX9VSu"
               
                ] as [String : Any]
           
                    
            Alamofire.request(Constants.LOGIN, method: .post,parameters: params,encoding: JSONEncoding.default).responseJSON { (response) in
                
                if response.result.isSuccess {
                    //let responseJSON = JSON(response.result.value!)
                    let jsonResponse = response.result.value as! NSDictionary
                    print(jsonResponse)
                    
                    let statusmsgStr = jsonResponse.value(forKey: "statusmsg") as! String

                    if statusmsgStr == "Otp Sent Successfully"
                     {
                     let next = self.storyboard?.instantiateViewController(withIdentifier: "SignupOTPViewController") as! SignupOTPViewController
                        // next.CheckStr = "forgetOTPView"
                     self.present(next, animated: true, completion:nil)
                    }
                }
        }
    }
}
}
