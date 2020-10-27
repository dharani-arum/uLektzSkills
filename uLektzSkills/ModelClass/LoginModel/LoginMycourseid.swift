//
//  LoginMycourseid.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 19, 2020

import Foundation


class LoginMycourseid : NSObject, NSCoding{

    var courseid : AnyObject!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        courseid = dictionary["courseid"] as? AnyObject
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if courseid != nil{
            dictionary["courseid"] = courseid
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        courseid = aDecoder.decodeObject(forKey: "courseid") as? AnyObject
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if courseid != nil{
            aCoder.encode(courseid, forKey: "courseid")
        }
    }
}