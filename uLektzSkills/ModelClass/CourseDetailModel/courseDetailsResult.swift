//
//  courseDetailsResult.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 23, 2020

import Foundation


class courseDetailsResult : NSObject, NSCoding{

    var assessment : [courseDetailsAssessment]!
    var status : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        status = dictionary["status"] as? String
        assessment = [courseDetailsAssessment]()
        if let assessmentArray = dictionary["Assessment"] as? [[String:Any]]{
            for dic in assessmentArray{
                let value = courseDetailsAssessment(fromDictionary: dic)
                assessment.append(value)
            }
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if status != nil{
            dictionary["status"] = status
        }
        if assessment != nil{
            var dictionaryElements = [[String:Any]]()
            for assessmentElement in assessment {
                dictionaryElements.append(assessmentElement.toDictionary())
            }
            dictionary["assessment"] = dictionaryElements
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        assessment = aDecoder.decodeObject(forKey: "Assessment") as? [courseDetailsAssessment]
        status = aDecoder.decodeObject(forKey: "status") as? String
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if assessment != nil{
            aCoder.encode(assessment, forKey: "Assessment")
        }
        if status != nil{
            aCoder.encode(status, forKey: "status")
        }
    }
}