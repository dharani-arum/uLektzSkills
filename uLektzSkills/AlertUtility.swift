//
//  AlertUtility.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 16/10/20.
//

import Foundation
import SCLAlertView


class AlertControl {
    
    private static let _instance = AlertControl()
    
    static var Instance: AlertControl{
        return _instance
    }
    
    func Toast(inViewController: UIViewController,title :String) {
        
        let appearance = SCLAlertView.SCLAppearance(
            kTitleFont: UIFont(name: "Quicksand-Bold", size: 18)!,
            kTextFont: UIFont(name: "Quicksand", size: 14)!,
            kButtonFont: UIFont(name: "Quicksand-Bold", size: 14)!,
            showCloseButton: false,
            showCircularIcon: false,
            shouldAutoDismiss: true
            
        )
        let alert = SCLAlertView(appearance: appearance)
        
        //alert.showNotice(title, subTitle: message)
        let timer = SCLAlertView.SCLTimeoutConfiguration.init(timeoutValue: 2.0, timeoutAction: {})
        
        alert.showNotice(title, subTitle: "",closeButtonTitle: nil, timeout: timer, colorStyle: 0xA429FF, colorTextButton: 0xFFFFF, circleIconImage: nil, animationStyle: SCLAnimationStyle.topToBottom)
    }
    
    func validationAlert(inViewController: UIViewController, title: String, message: String) {
        
        let appearance = SCLAlertView.SCLAppearance(
            kTitleFont: UIFont(name: "Quicksand-Bold", size: 18)!,
            kTextFont: UIFont(name: "Quicksand", size: 14)!,
            kButtonFont: UIFont(name: "Quicksand-Bold", size: 14)!,
            showCloseButton: false,
            showCircularIcon: false,
            shouldAutoDismiss: true
            
        )
        let alert = SCLAlertView(appearance: appearance)
        
        //alert.showNotice(title, subTitle: message)
        let timer = SCLAlertView.SCLTimeoutConfiguration.init(timeoutValue: 2.0, timeoutAction: {})
        alert.showNotice(title, subTitle: message, closeButtonTitle: nil, timeout: timer, colorStyle: 0xff7443, colorTextButton: 0xFFFFF, circleIconImage: nil, animationStyle: SCLAnimationStyle.topToBottom)
        
    }
    
    func singleButtonAlert(inViewController: UIViewController, title: String, message: String, buttonTitle: String, actionBlock: @escaping () -> Void) {
        
        let appearance = SCLAlertView.SCLAppearance(
//            kTitleFont: UIFont(name: "Quicksand-Bold", size: 15)!,
//            kTextFont: UIFont(name: "Quicksand", size: 14)!,
//            kButtonFont: UIFont(name: "Quicksand-Bold", size: 14)!,
            showCloseButton: false,
            showCircularIcon: false,
            shouldAutoDismiss: true
            
        )
        let alert = SCLAlertView(appearance: appearance)
        
        alert.addButton(buttonTitle, action: actionBlock)
        alert.showNotice(title, subTitle: message)
        
        
    }
    
    func doubleButtonAlert(inViewController: UIViewController, title: String, message: String, successButtonTitle: String, failureButtonTitle: String, actionSuccess: @escaping () -> Void, actionFailure: @escaping () -> Void) {
        
        let appearance = SCLAlertView.SCLAppearance(
            kTitleFont: UIFont(name: "Quicksand-Bold", size: 18)!,
            kTextFont: UIFont(name: "Quicksand", size: 14)!,
            kButtonFont: UIFont(name: "Quicksand-Bold", size: 14)!,
            showCloseButton: false,
            showCircularIcon: false
        )
        let alert = SCLAlertView(appearance: appearance)
        
        alert.addButton(successButtonTitle, action: actionSuccess)
        alert.addButton(failureButtonTitle, action: actionFailure)
        alert.showNotice(title, subTitle: message)
        
        let timer = SCLAlertView.SCLTimeoutConfiguration.init(timeoutValue: 4.0, timeoutAction: {})
        alert.showNotice(title, subTitle: message, closeButtonTitle: nil, timeout: timer, colorStyle: 0xff7443, colorTextButton: 0xFFFFF, circleIconImage: nil, animationStyle: SCLAnimationStyle.topToBottom)
        
        
        
        
    }
    func ThreeButtonAlert(inViewController: UIViewController, title: String, successButtonTitle: String, failureButtonTitle: String,cancelButtonTitle: String,  actionSuccess: @escaping () -> Void, actionFailure: @escaping () -> Void, cancelAction: @escaping () -> Void){
        
        let appearance = SCLAlertView.SCLAppearance(
            kTitleFont: UIFont(name: "Quicksand-Bold", size: 18)!,
            kTextFont: UIFont(name: "Quicksand", size: 14)!,
            kButtonFont: UIFont(name: "Quicksand-Bold", size: 14)!,
            showCloseButton: false,
            showCircularIcon: false
        )
        let alert = SCLAlertView(appearance: appearance)
        
        alert.addButton(successButtonTitle, action: actionSuccess)
        alert.addButton(failureButtonTitle, action: actionFailure)
        alert.addButton(cancelButtonTitle, action: cancelAction)
        
        alert.showNotice(title, subTitle: "")
        
    }
}
