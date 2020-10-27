//
//  MycourseModel.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 20, 2020

import Foundation


class MycourseModel : NSObject, NSCoding{

    var skillInfo : [MycourseSkillInfo]!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        skillInfo = [MycourseSkillInfo]()
        if let skillInfoArray = dictionary["skillInfo"] as? [[String:Any]]{
            for dic in skillInfoArray{
                let value = MycourseSkillInfo(fromDictionary: dic)
                skillInfo.append(value)
            }
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if skillInfo != nil{
            var dictionaryElements = [[String:Any]]()
            for skillInfoElement in skillInfo {
                dictionaryElements.append(skillInfoElement.toDictionary())
            }
            dictionary["skillInfo"] = dictionaryElements
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        skillInfo = aDecoder.decodeObject(forKey: "skillInfo") as? [MycourseSkillInfo]
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if skillInfo != nil{
            aCoder.encode(skillInfo, forKey: "skillInfo")
        }
    }
}