//
//  ForgetPasswordViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 15/10/20.
//

import UIKit

class ForgetPasswordViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var newPassTxt: UITextField!
    @IBOutlet weak var confirmPassTxt: UITextField!
    
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
