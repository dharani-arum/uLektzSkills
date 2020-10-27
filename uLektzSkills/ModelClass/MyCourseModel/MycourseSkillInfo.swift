//
//  MycourseSkillInfo.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 20, 2020

import Foundation


class MycourseSkillInfo : NSObject, NSCoding{

    var certificate : String!
    var courseId : String!
    var courseName : String!
    var courseStatus : String!
    var courseTimeStatus : String!
    var ctype : String!
    var extApp : String!
    var imagePath : String!
    var learningHours : AnyObject!
    var publisherName : String!
    var resumecnt : Int!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        certificate = dictionary["certificate"] as? String
        courseId = dictionary["course_id"] as? String
        courseName = dictionary["course_name"] as? String
        courseStatus = dictionary["course_status"] as? String
        courseTimeStatus = dictionary["courseTimeStatus"] as? String
        ctype = dictionary["ctype"] as? String
        extApp = dictionary["extApp"] as? String
        imagePath = dictionary["image_path"] as? String
        learningHours = dictionary["learning_hours"] as AnyObject
        publisherName = dictionary["publisher_name"] as? String
        resumecnt = dictionary["resumecnt"] as? Int
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if certificate != nil{
            dictionary["certificate"] = certificate
        }
        if courseId != nil{
            dictionary["course_id"] = courseId
        }
        if courseName != nil{
            dictionary["course_name"] = courseName
        }
        if courseStatus != nil{
            dictionary["course_status"] = courseStatus
        }
        if courseTimeStatus != nil{
            dictionary["courseTimeStatus"] = courseTimeStatus
        }
        if ctype != nil{
            dictionary["ctype"] = ctype
        }
        if extApp != nil{
            dictionary["extApp"] = extApp
        }
        if imagePath != nil{
            dictionary["image_path"] = imagePath
        }
        if learningHours != nil{
            dictionary["learning_hours"] = learningHours
        }
        if publisherName != nil{
            dictionary["publisher_name"] = publisherName
        }
        if resumecnt != nil{
            dictionary["resumecnt"] = resumecnt
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        certificate = aDecoder.decodeObject(forKey: "certificate") as? String
        courseId = aDecoder.decodeObject(forKey: "course_id") as? String
        courseName = aDecoder.decodeObject(forKey: "course_name") as? String
        courseStatus = aDecoder.decodeObject(forKey: "course_status") as? String
        courseTimeStatus = aDecoder.decodeObject(forKey: "courseTimeStatus") as? String
        ctype = aDecoder.decodeObject(forKey: "ctype") as? String
        extApp = aDecoder.decodeObject(forKey: "extApp") as? String
        imagePath = aDecoder.decodeObject(forKey: "image_path") as? String
        learningHours = aDecoder.decodeObject(forKey: "learning_hours") as AnyObject
        publisherName = aDecoder.decodeObject(forKey: "publisher_name") as? String
        resumecnt = aDecoder.decodeObject(forKey: "resumecnt") as? Int
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if certificate != nil{
            aCoder.encode(certificate, forKey: "certificate")
        }
        if courseId != nil{
            aCoder.encode(courseId, forKey: "course_id")
        }
        if courseName != nil{
            aCoder.encode(courseName, forKey: "course_name")
        }
        if courseStatus != nil{
            aCoder.encode(courseStatus, forKey: "course_status")
        }
        if courseTimeStatus != nil{
            aCoder.encode(courseTimeStatus, forKey: "courseTimeStatus")
        }
        if ctype != nil{
            aCoder.encode(ctype, forKey: "ctype")
        }
        if extApp != nil{
            aCoder.encode(extApp, forKey: "extApp")
        }
        if imagePath != nil{
            aCoder.encode(imagePath, forKey: "image_path")
        }
        if learningHours != nil{
            aCoder.encode(learningHours, forKey: "learning_hours")
        }
        if publisherName != nil{
            aCoder.encode(publisherName, forKey: "publisher_name")
        }
        if resumecnt != nil{
            aCoder.encode(resumecnt, forKey: "resumecnt")
        }
    }
}
