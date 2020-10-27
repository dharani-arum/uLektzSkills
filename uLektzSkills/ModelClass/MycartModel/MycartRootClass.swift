//
//  MycartRootClass.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 20, 2020

import Foundation


class MycartRootClass : NSObject, NSCoding{

    var output : MycartOutput!
    var statusmsg : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        statusmsg = dictionary["statusmsg"] as? String
        if let outputData = dictionary["output"] as? [String:Any]{
            output = MycartOutput(fromDictionary: outputData)
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if statusmsg != nil{
            dictionary["statusmsg"] = statusmsg
        }
        if output != nil{
            dictionary["output"] = output.toDictionary()
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        output = aDecoder.decodeObject(forKey: "output") as? MycartOutput
        statusmsg = aDecoder.decodeObject(forKey: "statusmsg") as? String
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if output != nil{
            aCoder.encode(output, forKey: "output")
        }
        if statusmsg != nil{
            aCoder.encode(statusmsg, forKey: "statusmsg")
        }
    }
}