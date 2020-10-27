//
//  MycartCartInfo.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 20, 2020

import Foundation


class MycartCartInfo : NSObject, NSCoding{

    var contentcode : String!
    var couponApplied : String!
    var gstAmt : Float!
    var id : String!
    var imagePath : String!
    var name : String!
    var netPrice : String!
    var originalPrice : String!
    var publishername : String!
    var sellingPrice : String!
    var type : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        contentcode = dictionary["contentcode"] as? String
        couponApplied = dictionary["couponApplied"] as? String
        gstAmt = dictionary["gstAmt"] as? Float
        id = dictionary["id"] as? String
        imagePath = dictionary["image_path"] as? String
        name = dictionary["name"] as? String
        netPrice = dictionary["netPrice"] as? String
        originalPrice = dictionary["originalPrice"] as? String
        publishername = dictionary["publishername"] as? String
        sellingPrice = dictionary["sellingPrice"] as? String
        type = dictionary["type"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if contentcode != nil{
            dictionary["contentcode"] = contentcode
        }
        if couponApplied != nil{
            dictionary["couponApplied"] = couponApplied
        }
        if gstAmt != nil{
            dictionary["gstAmt"] = gstAmt
        }
        if id != nil{
            dictionary["id"] = id
        }
        if imagePath != nil{
            dictionary["image_path"] = imagePath
        }
        if name != nil{
            dictionary["name"] = name
        }
        if netPrice != nil{
            dictionary["netPrice"] = netPrice
        }
        if originalPrice != nil{
            dictionary["originalPrice"] = originalPrice
        }
        if publishername != nil{
            dictionary["publishername"] = publishername
        }
        if sellingPrice != nil{
            dictionary["sellingPrice"] = sellingPrice
        }
        if type != nil{
            dictionary["type"] = type
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        contentcode = aDecoder.decodeObject(forKey: "contentcode") as? String
        couponApplied = aDecoder.decodeObject(forKey: "couponApplied") as? String
        gstAmt = aDecoder.decodeObject(forKey: "gstAmt") as? Float
        id = aDecoder.decodeObject(forKey: "id") as? String
        imagePath = aDecoder.decodeObject(forKey: "image_path") as? String
        name = aDecoder.decodeObject(forKey: "name") as? String
        netPrice = aDecoder.decodeObject(forKey: "netPrice") as? String
        originalPrice = aDecoder.decodeObject(forKey: "originalPrice") as? String
        publishername = aDecoder.decodeObject(forKey: "publishername") as? String
        sellingPrice = aDecoder.decodeObject(forKey: "sellingPrice") as? String
        type = aDecoder.decodeObject(forKey: "type") as? String
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if contentcode != nil{
            aCoder.encode(contentcode, forKey: "contentcode")
        }
        if couponApplied != nil{
            aCoder.encode(couponApplied, forKey: "couponApplied")
        }
        if gstAmt != nil{
            aCoder.encode(gstAmt, forKey: "gstAmt")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if imagePath != nil{
            aCoder.encode(imagePath, forKey: "image_path")
        }
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }
        if netPrice != nil{
            aCoder.encode(netPrice, forKey: "netPrice")
        }
        if originalPrice != nil{
            aCoder.encode(originalPrice, forKey: "originalPrice")
        }
        if publishername != nil{
            aCoder.encode(publishername, forKey: "publishername")
        }
        if sellingPrice != nil{
            aCoder.encode(sellingPrice, forKey: "sellingPrice")
        }
        if type != nil{
            aCoder.encode(type, forKey: "type")
        }
    }
}
