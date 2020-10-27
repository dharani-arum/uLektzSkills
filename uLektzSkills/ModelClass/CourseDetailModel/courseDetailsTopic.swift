//
//  courseDetailsTopic.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 23, 2020

import Foundation


class courseDetailsTopic : NSObject, NSCoding{

    var files : [courseDetailsFile]!
    var id : String!
    var title : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        id = dictionary["id"] as? String
        title = dictionary["title"] as? String
        files = [courseDetailsFile]()
        if let filesArray = dictionary["files"] as? [[String:Any]]{
            for dic in filesArray{
                let value = courseDetailsFile(fromDictionary: dic)
                files.append(value)
            }
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if id != nil{
            dictionary["id"] = id
        }
        if title != nil{
            dictionary["title"] = title
        }
        if files != nil{
            var dictionaryElements = [[String:Any]]()
            for filesElement in files {
                dictionaryElements.append(filesElement.toDictionary())
            }
            dictionary["files"] = dictionaryElements
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        files = aDecoder.decodeObject(forKey: "files") as? [courseDetailsFile]
        id = aDecoder.decodeObject(forKey: "id") as? String
        title = aDecoder.decodeObject(forKey: "title") as? String
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if files != nil{
            aCoder.encode(files, forKey: "files")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if title != nil{
            aCoder.encode(title, forKey: "title")
        }
    }
}