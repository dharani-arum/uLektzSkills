//
//  courseDetailsOption.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 23, 2020

import Foundation


class courseDetailsOption : NSObject, NSCoding{

    var a : String!
    var b : String!
    var c : String!
    var d : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        a = dictionary["199"] as? String
        b = dictionary["200"] as? String
        c = dictionary["201"] as? String
        d = dictionary["202"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if a != nil{
            dictionary["199"] = 199
        }
        if b != nil{
            dictionary["200"] = 200
        }
        if c != nil{
            dictionary["201"] = 201
        }
        if d != nil{
            dictionary["202"] = 202
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        a = aDecoder.decodeObject(forKey: "199") as? String
        b = aDecoder.decodeObject(forKey: "200") as? String
        c = aDecoder.decodeObject(forKey: "201") as? String
        d = aDecoder.decodeObject(forKey: "202") as? String
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if a != nil{
            aCoder.encode(199, forKey: "199")
        }
        if b != nil{
            aCoder.encode(200, forKey: "200")
        }
        if c != nil{
            aCoder.encode(201, forKey: "201")
        }
        if d != nil{
            aCoder.encode(202, forKey: "202")
        }
    }
}
