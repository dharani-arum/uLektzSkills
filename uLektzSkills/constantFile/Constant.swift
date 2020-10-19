//
//  Constant.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 16/10/20.
//

import Foundation
import UIKit
class Constants {
static let LOGIN = "https://www.ulektz.com/myaccountAPI/api.php"
    static let myColor = UIColor.systemGray3

    
    
    
    
}
func validate(phone: String) -> Bool
{
        let phoneRegex = "^[0-9+]{0,1}+[0-9]{5,16}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        return phoneTest.evaluate(with: phone)
}
func isValidEmail(_ email: String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailPred.evaluate(with: email)
}


