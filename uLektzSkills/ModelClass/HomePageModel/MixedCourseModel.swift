//
//  MixedCourseModel.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 21, 2020

import Foundation


class MixedCourseModel : NSObject, NSCoding{

    var freeCourses : [MixedCourseFreeCourse]!
    var liveCourses : [MixedCourseLiveCourse]!
    var newReleases : [MixedCourseNewRelease]!
    var statusMsg : String!


    
    init(fromDictionary dictionary: [String:Any]){
        statusMsg = dictionary["statusMsg"] as? String
        freeCourses = [MixedCourseFreeCourse]()
        if let freeCoursesArray = dictionary["freeCourses"] as? [[String:Any]]{
            for dic in freeCoursesArray{
                let value = MixedCourseFreeCourse(fromDictionary: dic)
                freeCourses.append(value)
            }
        }
        liveCourses = [MixedCourseLiveCourse]()
        if let liveCoursesArray = dictionary["liveCourses"] as? [[String:Any]]{
            for dic in liveCoursesArray{
                let value = MixedCourseLiveCourse(fromDictionary: dic)
                liveCourses.append(value)
            }
        }
        newReleases = [MixedCourseNewRelease]()
        if let newReleasesArray = dictionary["newReleases"] as? [[String:Any]]{
            for dic in newReleasesArray{
                let value = MixedCourseNewRelease(fromDictionary: dic)
                newReleases.append(value)
            }
        }
    }

   
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if statusMsg != nil{
            dictionary["statusMsg"] = statusMsg
        }
        if freeCourses != nil{
            var dictionaryElements = [[String:Any]]()
            for freeCoursesElement in freeCourses {
                dictionaryElements.append(freeCoursesElement.toDictionary())
            }
            dictionary["freeCourses"] = dictionaryElements
        }
        if liveCourses != nil{
            var dictionaryElements = [[String:Any]]()
            for liveCoursesElement in liveCourses {
                dictionaryElements.append(liveCoursesElement.toDictionary())
            }
            dictionary["liveCourses"] = dictionaryElements
        }
        if newReleases != nil{
            var dictionaryElements = [[String:Any]]()
            for newReleasesElement in newReleases {
                dictionaryElements.append(newReleasesElement.toDictionary())
            }
            dictionary["newReleases"] = dictionaryElements
        }
        return dictionary
    }

   
    
    @objc required init(coder aDecoder: NSCoder)
    {
        freeCourses = aDecoder.decodeObject(forKey: "freeCourses") as? [MixedCourseFreeCourse]
        liveCourses = aDecoder.decodeObject(forKey: "liveCourses") as? [MixedCourseLiveCourse]
        newReleases = aDecoder.decodeObject(forKey: "newReleases") as? [MixedCourseNewRelease]
        statusMsg = aDecoder.decodeObject(forKey: "statusMsg") as? String
    }

   
    @objc func encode(with aCoder: NSCoder)
    {
        if freeCourses != nil{
            aCoder.encode(freeCourses, forKey: "freeCourses")
        }
        if liveCourses != nil{
            aCoder.encode(liveCourses, forKey: "liveCourses")
        }
        if newReleases != nil{
            aCoder.encode(newReleases, forKey: "newReleases")
        }
        if statusMsg != nil{
            aCoder.encode(statusMsg, forKey: "statusMsg")
        }
    }
}
