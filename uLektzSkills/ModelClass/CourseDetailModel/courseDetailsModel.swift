//
//  courseDetailsModel.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 23, 2020

import Foundation


class courseDetailsModel : NSObject, NSCoding{

    var courseDetail : [courseDetailsCourseDetail]!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        courseDetail = [courseDetailsCourseDetail]()
        if let courseDetailArray = dictionary["courseDetail"] as? [[String:Any]]{
            for dic in courseDetailArray{
                let value = courseDetailsCourseDetail(fromDictionary: dic)
                courseDetail.append(value)
            }
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if courseDetail != nil{
            var dictionaryElements = [[String:Any]]()
            for courseDetailElement in courseDetail {
                dictionaryElements.append(courseDetailElement.toDictionary())
            }
            dictionary["courseDetail"] = dictionaryElements
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        courseDetail = aDecoder.decodeObject(forKey: "courseDetail") as? [courseDetailsCourseDetail]
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if courseDetail != nil{
            aCoder.encode(courseDetail, forKey: "courseDetail")
        }
    }
}