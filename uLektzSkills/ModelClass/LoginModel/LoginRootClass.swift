//
//  LoginRootClass.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 19, 2020

import Foundation


class LoginRootClass : NSObject, NSCoding{

    var institution : [LoginInstitution]!
    var userInfo : LoginUserInfo!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        if let userInfoData = dictionary["userInfo"] as? [String:Any]{
            userInfo = LoginUserInfo(fromDictionary: userInfoData)
        }
        institution = [LoginInstitution]()
        if let institutionArray = dictionary["institution"] as? [[String:Any]]{
            for dic in institutionArray{
                let value = LoginInstitution(fromDictionary: dic)
                institution.append(value)
            }
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if userInfo != nil{
            dictionary["userInfo"] = userInfo.toDictionary()
        }
        if institution != nil{
            var dictionaryElements = [[String:Any]]()
            for institutionElement in institution {
                dictionaryElements.append(institutionElement.toDictionary())
            }
            dictionary["institution"] = dictionaryElements
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        institution = aDecoder.decodeObject(forKey: "institution") as? [LoginInstitution]
        userInfo = aDecoder.decodeObject(forKey: "userInfo") as? LoginUserInfo
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if institution != nil{
            aCoder.encode(institution, forKey: "institution")
        }
        if userInfo != nil{
            aCoder.encode(userInfo, forKey: "userInfo")
        }
    }
}