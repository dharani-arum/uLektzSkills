//
//  MycartResult.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 20, 2020

import Foundation


class MycartResult : NSObject, NSCoding{

    var cartInfo : [MycartCartInfo]!
    var netAmount : Int!
    var totalamt : AnyObject!
    var totalgst : AnyObject!
    var totsellingamt : AnyObject!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        netAmount = dictionary["netAmount"] as? Int
        totalamt = dictionary["totalamt"] as AnyObject
        totalgst = dictionary["totalgst"] as AnyObject
        totsellingamt = dictionary["totsellingamt"] as AnyObject
        cartInfo = [MycartCartInfo]()
        if let cartInfoArray = dictionary["CartInfo"] as? [[String:Any]]{
            for dic in cartInfoArray{
                let value = MycartCartInfo(fromDictionary: dic)
                cartInfo.append(value)
            }
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if netAmount != nil{
            dictionary["netAmount"] = netAmount
        }
        if totalamt != nil{
            dictionary["totalamt"] = totalamt
        }
        if totalgst != nil{
            dictionary["totalgst"] = totalgst
        }
        if totsellingamt != nil{
            dictionary["totsellingamt"] = totsellingamt
        }
        if cartInfo != nil{
            var dictionaryElements = [[String:Any]]()
            for cartInfoElement in cartInfo {
                dictionaryElements.append(cartInfoElement.toDictionary())
            }
            dictionary["cartInfo"] = dictionaryElements
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        cartInfo = aDecoder.decodeObject(forKey: "CartInfo") as? [MycartCartInfo]
        netAmount = aDecoder.decodeObject(forKey: "netAmount") as? Int
        totalamt = aDecoder.decodeObject(forKey: "totalamt") as AnyObject
        totalgst = aDecoder.decodeObject(forKey: "totalgst") as AnyObject
        totsellingamt = aDecoder.decodeObject(forKey: "totsellingamt") as AnyObject
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if cartInfo != nil{
            aCoder.encode(cartInfo, forKey: "CartInfo")
        }
        if netAmount != nil{
            aCoder.encode(netAmount, forKey: "netAmount")
        }
        if totalamt != nil{
            aCoder.encode(totalamt, forKey: "totalamt")
        }
        if totalgst != nil{
            aCoder.encode(totalgst, forKey: "totalgst")
        }
        if totsellingamt != nil{
            aCoder.encode(totsellingamt, forKey: "totsellingamt")
        }
    }
}
