//
//  courseDetailsFile.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 23, 2020

import Foundation


class courseDetailsFile : NSObject, NSCoding{

    var assessmentJson : courseDetailsAssessmentJson!
    var createdOn : String!
    var duration : String!
    var fileType : String!
    var finalTest : String!
    var id : String!
    var linear : String!
    var marks : String!
    var maxtimeVideo : Int!
    var multiPackId : String!
    var paperType : String!
    var path : String!
    var preAssmnt : Int!
    var report : courseDetailsReport!
    var runTime : Int!
    var status : String!
    var testTaken : String!
    var title : String!
    var topicId : String!
    var totalQuestions : String!
    var totaltimeVideo : Int!
    var uploadType : String!
    var videoDuration : AnyObject!
    var videoStatus : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        createdOn = dictionary["created_on"] as? String
        duration = dictionary["duration"] as? String
        fileType = dictionary["file_type"] as? String
        finalTest = dictionary["final_test"] as? String
        id = dictionary["id"] as? String
        linear = dictionary["linear"] as? String
        marks = dictionary["marks"] as? String
        maxtimeVideo = dictionary["maxtime_video"] as? Int
        multiPackId = dictionary["multiPackId"] as? String
        paperType = dictionary["paper_type"] as? String
        path = dictionary["path"] as? String
        preAssmnt = dictionary["preAssmnt"] as? Int
        runTime = dictionary["run_time"] as? Int
        status = dictionary["status"] as? String
        testTaken = dictionary["testTaken"] as? String
        title = dictionary["title"] as? String
        topicId = dictionary["topic_id"] as? String
        totalQuestions = dictionary["total_questions"] as? String
        totaltimeVideo = dictionary["totaltime_video"] as? Int
        uploadType = dictionary["upload_type"] as? String
        videoDuration = dictionary["video_duration"] as? AnyObject
        videoStatus = dictionary["video_status"] as? String
        if let assessmentJsonData = dictionary["assessment_json"] as? [String:Any]{
            assessmentJson = courseDetailsAssessmentJson(fromDictionary: assessmentJsonData)
        }
        if let reportData = dictionary["Report"] as? [String:Any]{
            report = courseDetailsReport(fromDictionary: reportData)
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if createdOn != nil{
            dictionary["created_on"] = createdOn
        }
        if duration != nil{
            dictionary["duration"] = duration
        }
        if fileType != nil{
            dictionary["file_type"] = fileType
        }
        if finalTest != nil{
            dictionary["final_test"] = finalTest
        }
        if id != nil{
            dictionary["id"] = id
        }
        if linear != nil{
            dictionary["linear"] = linear
        }
        if marks != nil{
            dictionary["marks"] = marks
        }
        if maxtimeVideo != nil{
            dictionary["maxtime_video"] = maxtimeVideo
        }
        if multiPackId != nil{
            dictionary["multiPackId"] = multiPackId
        }
        if paperType != nil{
            dictionary["paper_type"] = paperType
        }
        if path != nil{
            dictionary["path"] = path
        }
        if preAssmnt != nil{
            dictionary["preAssmnt"] = preAssmnt
        }
        if runTime != nil{
            dictionary["run_time"] = runTime
        }
        if status != nil{
            dictionary["status"] = status
        }
        if testTaken != nil{
            dictionary["testTaken"] = testTaken
        }
        if title != nil{
            dictionary["title"] = title
        }
        if topicId != nil{
            dictionary["topic_id"] = topicId
        }
        if totalQuestions != nil{
            dictionary["total_questions"] = totalQuestions
        }
        if totaltimeVideo != nil{
            dictionary["totaltime_video"] = totaltimeVideo
        }
        if uploadType != nil{
            dictionary["upload_type"] = uploadType
        }
        if videoDuration != nil{
            dictionary["video_duration"] = videoDuration
        }
        if videoStatus != nil{
            dictionary["video_status"] = videoStatus
        }
        if assessmentJson != nil{
            dictionary["assessmentJson"] = assessmentJson.toDictionary()
        }
        if report != nil{
            dictionary["report"] = report.toDictionary()
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        assessmentJson = aDecoder.decodeObject(forKey: "assessment_json") as? courseDetailsAssessmentJson
        createdOn = aDecoder.decodeObject(forKey: "created_on") as? String
        duration = aDecoder.decodeObject(forKey: "duration") as? String
        fileType = aDecoder.decodeObject(forKey: "file_type") as? String
        finalTest = aDecoder.decodeObject(forKey: "final_test") as? String
        id = aDecoder.decodeObject(forKey: "id") as? String
        linear = aDecoder.decodeObject(forKey: "linear") as? String
        marks = aDecoder.decodeObject(forKey: "marks") as? String
        maxtimeVideo = aDecoder.decodeObject(forKey: "maxtime_video") as? Int
        multiPackId = aDecoder.decodeObject(forKey: "multiPackId") as? String
        paperType = aDecoder.decodeObject(forKey: "paper_type") as? String
        path = aDecoder.decodeObject(forKey: "path") as? String
        preAssmnt = aDecoder.decodeObject(forKey: "preAssmnt") as? Int
        report = aDecoder.decodeObject(forKey: "Report") as? courseDetailsReport
        runTime = aDecoder.decodeObject(forKey: "run_time") as? Int
        status = aDecoder.decodeObject(forKey: "status") as? String
        testTaken = aDecoder.decodeObject(forKey: "testTaken") as? String
        title = aDecoder.decodeObject(forKey: "title") as? String
        topicId = aDecoder.decodeObject(forKey: "topic_id") as? String
        totalQuestions = aDecoder.decodeObject(forKey: "total_questions") as? String
        totaltimeVideo = aDecoder.decodeObject(forKey: "totaltime_video") as? Int
        uploadType = aDecoder.decodeObject(forKey: "upload_type") as? String
        videoDuration = aDecoder.decodeObject(forKey: "video_duration") as? AnyObject
        videoStatus = aDecoder.decodeObject(forKey: "video_status") as? String
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if assessmentJson != nil{
            aCoder.encode(assessmentJson, forKey: "assessment_json")
        }
        if createdOn != nil{
            aCoder.encode(createdOn, forKey: "created_on")
        }
        if duration != nil{
            aCoder.encode(duration, forKey: "duration")
        }
        if fileType != nil{
            aCoder.encode(fileType, forKey: "file_type")
        }
        if finalTest != nil{
            aCoder.encode(finalTest, forKey: "final_test")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if linear != nil{
            aCoder.encode(linear, forKey: "linear")
        }
        if marks != nil{
            aCoder.encode(marks, forKey: "marks")
        }
        if maxtimeVideo != nil{
            aCoder.encode(maxtimeVideo, forKey: "maxtime_video")
        }
        if multiPackId != nil{
            aCoder.encode(multiPackId, forKey: "multiPackId")
        }
        if paperType != nil{
            aCoder.encode(paperType, forKey: "paper_type")
        }
        if path != nil{
            aCoder.encode(path, forKey: "path")
        }
        if preAssmnt != nil{
            aCoder.encode(preAssmnt, forKey: "preAssmnt")
        }
        if report != nil{
            aCoder.encode(report, forKey: "Report")
        }
        if runTime != nil{
            aCoder.encode(runTime, forKey: "run_time")
        }
        if status != nil{
            aCoder.encode(status, forKey: "status")
        }
        if testTaken != nil{
            aCoder.encode(testTaken, forKey: "testTaken")
        }
        if title != nil{
            aCoder.encode(title, forKey: "title")
        }
        if topicId != nil{
            aCoder.encode(topicId, forKey: "topic_id")
        }
        if totalQuestions != nil{
            aCoder.encode(totalQuestions, forKey: "total_questions")
        }
        if totaltimeVideo != nil{
            aCoder.encode(totaltimeVideo, forKey: "totaltime_video")
        }
        if uploadType != nil{
            aCoder.encode(uploadType, forKey: "upload_type")
        }
        if videoDuration != nil{
            aCoder.encode(videoDuration, forKey: "video_duration")
        }
        if videoStatus != nil{
            aCoder.encode(videoStatus, forKey: "video_status")
        }
    }
}