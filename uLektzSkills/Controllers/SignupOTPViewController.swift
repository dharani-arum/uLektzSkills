//
//  SignupOTPViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 14/10/20.
//

import UIKit
import Alamofire
import SwiftyJSON

class SignupOTPViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var resendBtn: UIButton!
    @IBOutlet weak var informationLbl: UILabel!
    @IBOutlet weak var otpTxtFld: UITextField!
    
    @IBOutlet weak var countLbl: UILabel!
    @IBOutlet weak var continueBtn: UIButton!
    
    var checkStr = String()
    var emailStr = String()
    var mobilenumberStr = String()
    var nameStr = String()
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
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(SignUpViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        if checkStr == "signupOTPView"
        {
        let mutableAttributedString = NSMutableAttributedString()
       let appendStr = emailStr + " and " + mobilenumberStr
        
        let Attributes1: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.darkGray, .font: UIFont.systemFont(ofSize: 14)]
        let Attributes2: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.black, .font: UIFont.systemFont(ofSize: 14)]
        let Attributes3: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.darkGray, .font: UIFont.systemFont(ofSize: 14)]

        let partOne = NSMutableAttributedString(string: "One time password (OTP) has been sent to  ", attributes: Attributes1)
        let partTwo = NSMutableAttributedString(string: appendStr, attributes: Attributes2)
        let partThree = NSMutableAttributedString(string: "  Please enter the OTP and Continue.", attributes: Attributes3)
        mutableAttributedString.append(partOne)
        mutableAttributedString.append(partTwo)
        mutableAttributedString.append(partThree)

        self.informationLbl.attributedText = mutableAttributedString
        }
        else
        {
            let mutableAttributedString = NSMutableAttributedString()
           let appendStr = emailStr
            
            let Attributes1: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.darkGray, .font: UIFont.systemFont(ofSize: 14)]
            let Attributes2: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.black, .font: UIFont.systemFont(ofSize: 14)]
            let Attributes3: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.darkGray, .font: UIFont.systemFont(ofSize: 14)]

            let partOne = NSMutableAttributedString(string: "One time password (OTP) has been sent to  ", attributes: Attributes1)
            let partTwo = NSMutableAttributedString(string: appendStr, attributes: Attributes2)
            let partThree = NSMutableAttributedString(string: "  Please enter the OTP and Continue.", attributes: Attributes3)
            mutableAttributedString.append(partOne)
            mutableAttributedString.append(partTwo)
            mutableAttributedString.append(partThree)
            self.informationLbl.attributedText = mutableAttributedString


        }
        // Do any additional setup after loading the view.
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {



        if range.location == 0
        {
            self.countLbl.text = "1/5"
        }
        else if range.location == 1
        {
            self.countLbl.text = "2/5"
        }
       else if range.location == 2
        {
            self.countLbl.text = "3/5"
        }
        else if range.location == 3
        {
            self.countLbl.text = "4/5"
        }
        else
        {
            self.countLbl.text = "5/5"
        }
        return range.location < 5
    }
    @IBAction func continueBtnAct(_ sender: Any)
    {
        if Connectivity.isConnectedToInternet {
         
        if checkStr == "signupOTPView"
        {
   
        if otpTxtFld.text == ""
           {
            AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter OTP!", buttonTitle: "Ok", actionBlock: {})
           }
           else
           {
            
            let params = [
                "functionName":"signupVerifyOtp",
                "email":emailStr,
                "mobile_no":mobilenumberStr,
                "otp":otpTxtFld.text!
               
                ] as [String : Any]
           
                    
            Alamofire.request(Constants.baseUrl, method: .post,parameters: params,encoding: JSONEncoding.default).responseJSON { (response) in
                
                if response.result.isSuccess {
                    //let responseJSON = JSON(response.result.value!)
                    let jsonResponse = response.result.value as! NSDictionary
                    print(jsonResponse)

                    let statusmsgStr = jsonResponse.value(forKey: "statusmsg") as! String
                   
                    AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: statusmsgStr , buttonTitle: "Ok", actionBlock: {})
                   if statusmsgStr == "Otp verified"
                    {
                    
                    
                    let next = self.storyboard?.instantiateViewController(withIdentifier: "ForgetPasswordViewController") as! ForgetPasswordViewController
                       next.CheckStr = "signUpOTPView"
                       next.emailString = self.emailStr
                       next.mobileString = self.mobilenumberStr
                    self.navigationController?.pushViewController(next, animated:true)
                   
                    }
                }
            }
            
           }
        }
        else{
            
            if otpTxtFld.text == ""
               {
                AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "Please Enter OTP!", buttonTitle: "Ok", actionBlock: {})
               }
               else
               {
                let params = [
                    "functionName":"forgotpasswordVerifyOtp",
                    "username":emailStr,
                    "otp":otpTxtFld.text!
                   
                    ] as [String : Any]
               
                        
                Alamofire.request(Constants.baseUrl, method: .post,parameters: params,encoding: JSONEncoding.default).responseJSON { (response) in
                    
                    if response.result.isSuccess {
                        //let responseJSON = JSON(response.result.value!)
                        let jsonResponse = response.result.value as! NSDictionary
                        print(jsonResponse)

                        let statusmsgStr = jsonResponse.value(forKey: "statusmsg") as! String
                        
                        if statusmsgStr == "Otp verified"
                         {
                         let next = self.storyboard?.instantiateViewController(withIdentifier: "ForgetPasswordViewController") as! ForgetPasswordViewController
                             next.CheckStr = "forgetOTPView"
                            next.emailString = self.emailStr
                         self.present(next, animated: true, completion:nil)
                         }
                        AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: statusmsgStr , buttonTitle: "Ok", actionBlock: {})
                      
                    }
                }
               }
            
        }
        
    } else
        {
            AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "No Internet connection. Please turn on wifi", buttonTitle: "Ok", actionBlock: {})
        print("No Internet")
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
