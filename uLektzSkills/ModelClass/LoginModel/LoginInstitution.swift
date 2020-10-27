//
//  LoginInstitution.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 19, 2020

import Foundation


class LoginInstitution : NSObject, NSCoding{

    var errorMessage : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        errorMessage = dictionary["ErrorMessage"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if errorMessage != nil{
            dictionary["ErrorMessage"] = errorMessage
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        errorMessage = aDecoder.decodeObject(forKey: "ErrorMessage") as? String
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if errorMessage != nil{
            aCoder.encode(errorMessage, forKey: "ErrorMessage")
        }
    }
}