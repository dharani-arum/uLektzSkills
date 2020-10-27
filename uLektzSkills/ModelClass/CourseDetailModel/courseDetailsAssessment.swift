//
//  courseDetailsAssessment.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 23, 2020

import Foundation


class courseDetailsAssessment : NSObject, NSCoding{

    var answers : String!
    var explanation : String!
    var id : String!
    var mark : String!
    var mode : String!
    var negativeMark : String!
    var optionIds : [String]!
    var options : courseDetailsOption!
    var question : String!
    var questionType : String!
    var sectionId : String!
    var sectionName : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        answers = dictionary["answers"] as? String
        explanation = dictionary["explanation"] as? String
        id = dictionary["id"] as? String
        mark = dictionary["mark"] as? String
        mode = dictionary["mode"] as? String
        negativeMark = dictionary["negative_mark"] as? String
        question = dictionary["question"] as? String
        questionType = dictionary["questionType"] as? String
        sectionId = dictionary["section_id"] as? String
        sectionName = dictionary["section_name"] as? String
        if let optionsData = dictionary["options"] as? [String:Any]{
            options = courseDetailsOption(fromDictionary: optionsData)
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if answers != nil{
            dictionary["answers"] = answers
        }
        if explanation != nil{
            dictionary["explanation"] = explanation
        }
        if id != nil{
            dictionary["id"] = id
        }
        if mark != nil{
            dictionary["mark"] = mark
        }
        if mode != nil{
            dictionary["mode"] = mode
        }
        if negativeMark != nil{
            dictionary["negative_mark"] = negativeMark
        }
        if question != nil{
            dictionary["question"] = question
        }
        if questionType != nil{
            dictionary["questionType"] = questionType
        }
        if sectionId != nil{
            dictionary["section_id"] = sectionId
        }
        if sectionName != nil{
            dictionary["section_name"] = sectionName
        }
        if options != nil{
            dictionary["options"] = options.toDictionary()
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        answers = aDecoder.decodeObject(forKey: "answers") as? String
        explanation = aDecoder.decodeObject(forKey: "explanation") as? String
        id = aDecoder.decodeObject(forKey: "id") as? String
        mark = aDecoder.decodeObject(forKey: "mark") as? String
        mode = aDecoder.decodeObject(forKey: "mode") as? String
        negativeMark = aDecoder.decodeObject(forKey: "negative_mark") as? String
        optionIds = aDecoder.decodeObject(forKey: "optionIds") as? [String]
        options = aDecoder.decodeObject(forKey: "options") as? courseDetailsOption
        question = aDecoder.decodeObject(forKey: "question") as? String
        questionType = aDecoder.decodeObject(forKey: "questionType") as? String
        sectionId = aDecoder.decodeObject(forKey: "section_id") as? String
        sectionName = aDecoder.decodeObject(forKey: "section_name") as? String
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if answers != nil{
            aCoder.encode(answers, forKey: "answers")
        }
        if explanation != nil{
            aCoder.encode(explanation, forKey: "explanation")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if mark != nil{
            aCoder.encode(mark, forKey: "mark")
        }
        if mode != nil{
            aCoder.encode(mode, forKey: "mode")
        }
        if negativeMark != nil{
            aCoder.encode(negativeMark, forKey: "negative_mark")
        }
        if optionIds != nil{
            aCoder.encode(optionIds, forKey: "optionIds")
        }
        if options != nil{
            aCoder.encode(options, forKey: "options")
        }
        if question != nil{
            aCoder.encode(question, forKey: "question")
        }
        if questionType != nil{
            aCoder.encode(questionType, forKey: "questionType")
        }
        if sectionId != nil{
            aCoder.encode(sectionId, forKey: "section_id")
        }
        if sectionName != nil{
            aCoder.encode(sectionName, forKey: "section_name")
        }
    }
}