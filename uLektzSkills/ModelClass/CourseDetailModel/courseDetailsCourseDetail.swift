//
//  courseDetailsCourseDetail.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 23, 2020

import Foundation

class courseDetailsCourseDetail : NSObject, NSCoding{

    var addedLibrary : String!
    var author : String!
    var batchId : String!
    var categoryId : String!
    var cerNoPrefix : AnyObject!
    var cerSeqNo : String!
    var certDiscountPercent : AnyObject!
    var certDiscountPrice : AnyObject!
    var certDiscountRs : AnyObject!
    var certDiscountType : String!
    var certFinalPrice : String!
    var certGstPrice : String!
    var certPrice : String!
    var certificateTemplate : String!
    var certifiedBy : String!
    var completed : Int!
    var courseDuration : String!
    var courseType : String!
    var createdDate : String!
    var ctype : String!
    var descriptionField : String!
    var discountPercent : String!
    var discountPrice : String!
    var discountRs : String!
    var discountType : String!
    var duration : String!
    var endDate : String!
    var enrollStatus : String!
    var extCertTemp : AnyObject!
    var external : String!
    var externalUrl : AnyObject!
    var finalPrice : String!
    var gstPrice : String!
    var id : String!
    var imagePath : String!
    var invoicePrecentage : String!
    var language : String!
    var learningHours : String!
    var learningPath : String!
    var ltype : String!
    var name : String!
    var openDuration : String!
    var openPeriod : String!
    var paymentStatus : String!
    var photoConfirm : String!
    var price : String!
    var priceType : String!
    var privilegeUserId : String!
    var proctored : String!
    var publisherName : String!
    var registrationEndDate : String!
    var registrationOpenDate : String!
    var resumeCnt : String!
    var resumeqry : String!
    var startDate : String!
    var started : Int!
    var status : String!
    var studentsLimit : String!
    var topics : [courseDetailsTopic]!
    var udemyCourse : String!
    var udemyCourseId : String!
    var udemyUrl : AnyObject!
    var universities : String!
    var userId : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        addedLibrary = dictionary["added_Library"] as? String
        author = dictionary["author"] as? String
        batchId = dictionary["batch_id"] as? String
        categoryId = dictionary["category_id"] as? String
        cerNoPrefix = dictionary["cer_no_prefix"] as? AnyObject
        cerSeqNo = dictionary["cer_seq_no"] as? String
        certDiscountPercent = dictionary["cert_discount_percent"] as? AnyObject
        certDiscountPrice = dictionary["cert_discount_price"] as? AnyObject
        certDiscountRs = dictionary["cert_discount_rs"] as? AnyObject
        certDiscountType = dictionary["cert_discount_type"] as? String
        certFinalPrice = dictionary["cert_final_price"] as? String
        certGstPrice = dictionary["cert_gst_price"] as? String
        certPrice = dictionary["cert_price"] as? String
        certificateTemplate = dictionary["certificate_template"] as? String
        certifiedBy = dictionary["certified_by"] as? String
        completed = dictionary["completed"] as? Int
        courseDuration = dictionary["course_duration"] as? String
        courseType = dictionary["course_type"] as? String
        createdDate = dictionary["created_date"] as? String
        ctype = dictionary["ctype"] as? String
        descriptionField = dictionary["description"] as? String
        discountPercent = dictionary["discount_percent"] as? String
        discountPrice = dictionary["discount_price"] as? String
        discountRs = dictionary["discount_rs"] as? String
        discountType = dictionary["discount_type"] as? String
        duration = dictionary["duration"] as? String
        endDate = dictionary["end_date"] as? String
        enrollStatus = dictionary["enroll_status"] as? String
        extCertTemp = dictionary["ext_cert_temp"] as? AnyObject
        external = dictionary["external"] as? String
        externalUrl = dictionary["external_url"] as? AnyObject
        finalPrice = dictionary["final_price"] as? String
        gstPrice = dictionary["gst_price"] as? String
        id = dictionary["id"] as? String
        imagePath = dictionary["image_path"] as? String
        invoicePrecentage = dictionary["invoice_precentage"] as? String
        language = dictionary["language"] as? String
        learningHours = dictionary["learning_hours"] as? String
        learningPath = dictionary["learning_path"] as? String
        ltype = dictionary["ltype"] as? String
        name = dictionary["name"] as? String
        openDuration = dictionary["open_duration"] as? String
        openPeriod = dictionary["open_period"] as? String
        paymentStatus = dictionary["payment_status"] as? String
        photoConfirm = dictionary["photo_confirm"] as? String
        price = dictionary["price"] as? String
        priceType = dictionary["price_type"] as? String
        privilegeUserId = dictionary["privilege_user_id"] as? String
        proctored = dictionary["proctored"] as? String
        publisherName = dictionary["publisher_name"] as? String
        registrationEndDate = dictionary["registration_end_date"] as? String
        registrationOpenDate = dictionary["registration_open_date"] as? String
        resumeCnt = dictionary["resumeCnt"] as? String
        resumeqry = dictionary["resumeqry"] as? String
        startDate = dictionary["start_date"] as? String
        started = dictionary["started"] as? Int
        status = dictionary["status"] as? String
        studentsLimit = dictionary["students_limit"] as? String
        udemyCourse = dictionary["udemy_course"] as? String
        udemyCourseId = dictionary["udemy_course_id"] as? String
        udemyUrl = dictionary["udemy_url"] as? AnyObject
        universities = dictionary["universities"] as? String
        userId = dictionary["user_id"] as? String
        topics = [courseDetailsTopic]()
        if let topicsArray = dictionary["topics"] as? [[String:Any]]{
            for dic in topicsArray{
                let value = courseDetailsTopic(fromDictionary: dic)
                topics.append(value)
            }
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if addedLibrary != nil{
            dictionary["added_Library"] = addedLibrary
        }
        if author != nil{
            dictionary["author"] = author
        }
        if batchId != nil{
            dictionary["batch_id"] = batchId
        }
        if categoryId != nil{
            dictionary["category_id"] = categoryId
        }
        if cerNoPrefix != nil{
            dictionary["cer_no_prefix"] = cerNoPrefix
        }
        if cerSeqNo != nil{
            dictionary["cer_seq_no"] = cerSeqNo
        }
        if certDiscountPercent != nil{
            dictionary["cert_discount_percent"] = certDiscountPercent
        }
        if certDiscountPrice != nil{
            dictionary["cert_discount_price"] = certDiscountPrice
        }
        if certDiscountRs != nil{
            dictionary["cert_discount_rs"] = certDiscountRs
        }
        if certDiscountType != nil{
            dictionary["cert_discount_type"] = certDiscountType
        }
        if certFinalPrice != nil{
            dictionary["cert_final_price"] = certFinalPrice
        }
        if certGstPrice != nil{
            dictionary["cert_gst_price"] = certGstPrice
        }
        if certPrice != nil{
            dictionary["cert_price"] = certPrice
        }
        if certificateTemplate != nil{
            dictionary["certificate_template"] = certificateTemplate
        }
        if certifiedBy != nil{
            dictionary["certified_by"] = certifiedBy
        }
        if completed != nil{
            dictionary["completed"] = completed
        }
        if courseDuration != nil{
            dictionary["course_duration"] = courseDuration
        }
        if courseType != nil{
            dictionary["course_type"] = courseType
        }
        if createdDate != nil{
            dictionary["created_date"] = createdDate
        }
        if ctype != nil{
            dictionary["ctype"] = ctype
        }
        if descriptionField != nil{
            dictionary["description"] = descriptionField
        }
        if discountPercent != nil{
            dictionary["discount_percent"] = discountPercent
        }
        if discountPrice != nil{
            dictionary["discount_price"] = discountPrice
        }
        if discountRs != nil{
            dictionary["discount_rs"] = discountRs
        }
        if discountType != nil{
            dictionary["discount_type"] = discountType
        }
        if duration != nil{
            dictionary["duration"] = duration
        }
        if endDate != nil{
            dictionary["end_date"] = endDate
        }
        if enrollStatus != nil{
            dictionary["enroll_status"] = enrollStatus
        }
        if extCertTemp != nil{
            dictionary["ext_cert_temp"] = extCertTemp
        }
        if external != nil{
            dictionary["external"] = external
        }
        if externalUrl != nil{
            dictionary["external_url"] = externalUrl
        }
        if finalPrice != nil{
            dictionary["final_price"] = finalPrice
        }
        if gstPrice != nil{
            dictionary["gst_price"] = gstPrice
        }
        if id != nil{
            dictionary["id"] = id
        }
        if imagePath != nil{
            dictionary["image_path"] = imagePath
        }
        if invoicePrecentage != nil{
            dictionary["invoice_precentage"] = invoicePrecentage
        }
        if language != nil{
            dictionary["language"] = language
        }
        if learningHours != nil{
            dictionary["learning_hours"] = learningHours
        }
        if learningPath != nil{
            dictionary["learning_path"] = learningPath
        }
        if ltype != nil{
            dictionary["ltype"] = ltype
        }
        if name != nil{
            dictionary["name"] = name
        }
        if openDuration != nil{
            dictionary["open_duration"] = openDuration
        }
        if openPeriod != nil{
            dictionary["open_period"] = openPeriod
        }
        if paymentStatus != nil{
            dictionary["payment_status"] = paymentStatus
        }
        if photoConfirm != nil{
            dictionary["photo_confirm"] = photoConfirm
        }
        if price != nil{
            dictionary["price"] = price
        }
        if priceType != nil{
            dictionary["price_type"] = priceType
        }
        if privilegeUserId != nil{
            dictionary["privilege_user_id"] = privilegeUserId
        }
        if proctored != nil{
            dictionary["proctored"] = proctored
        }
        if publisherName != nil{
            dictionary["publisher_name"] = publisherName
        }
        if registrationEndDate != nil{
            dictionary["registration_end_date"] = registrationEndDate
        }
        if registrationOpenDate != nil{
            dictionary["registration_open_date"] = registrationOpenDate
        }
        if resumeCnt != nil{
            dictionary["resumeCnt"] = resumeCnt
        }
        if resumeqry != nil{
            dictionary["resumeqry"] = resumeqry
        }
        if startDate != nil{
            dictionary["start_date"] = startDate
        }
        if started != nil{
            dictionary["started"] = started
        }
        if status != nil{
            dictionary["status"] = status
        }
        if studentsLimit != nil{
            dictionary["students_limit"] = studentsLimit
        }
        if udemyCourse != nil{
            dictionary["udemy_course"] = udemyCourse
        }
        if udemyCourseId != nil{
            dictionary["udemy_course_id"] = udemyCourseId
        }
        if udemyUrl != nil{
            dictionary["udemy_url"] = udemyUrl
        }
        if universities != nil{
            dictionary["universities"] = universities
        }
        if userId != nil{
            dictionary["user_id"] = userId
        }
        if topics != nil{
            var dictionaryElements = [[String:Any]]()
            for topicsElement in topics {
                dictionaryElements.append(topicsElement.toDictionary())
            }
            dictionary["topics"] = dictionaryElements
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        addedLibrary = aDecoder.decodeObject(forKey: "added_Library") as? String
        author = aDecoder.decodeObject(forKey: "author") as? String
        batchId = aDecoder.decodeObject(forKey: "batch_id") as? String
        categoryId = aDecoder.decodeObject(forKey: "category_id") as? String
        cerNoPrefix = aDecoder.decodeObject(forKey: "cer_no_prefix") as? AnyObject
        cerSeqNo = aDecoder.decodeObject(forKey: "cer_seq_no") as? String
        certDiscountPercent = aDecoder.decodeObject(forKey: "cert_discount_percent") as? AnyObject
        certDiscountPrice = aDecoder.decodeObject(forKey: "cert_discount_price") as? AnyObject
        certDiscountRs = aDecoder.decodeObject(forKey: "cert_discount_rs") as? AnyObject
        certDiscountType = aDecoder.decodeObject(forKey: "cert_discount_type") as? String
        certFinalPrice = aDecoder.decodeObject(forKey: "cert_final_price") as? String
        certGstPrice = aDecoder.decodeObject(forKey: "cert_gst_price") as? String
        certPrice = aDecoder.decodeObject(forKey: "cert_price") as? String
        certificateTemplate = aDecoder.decodeObject(forKey: "certificate_template") as? String
        certifiedBy = aDecoder.decodeObject(forKey: "certified_by") as? String
        completed = aDecoder.decodeObject(forKey: "completed") as? Int
        courseDuration = aDecoder.decodeObject(forKey: "course_duration") as? String
        courseType = aDecoder.decodeObject(forKey: "course_type") as? String
        createdDate = aDecoder.decodeObject(forKey: "created_date") as? String
        ctype = aDecoder.decodeObject(forKey: "ctype") as? String
        descriptionField = aDecoder.decodeObject(forKey: "description") as? String
        discountPercent = aDecoder.decodeObject(forKey: "discount_percent") as? String
        discountPrice = aDecoder.decodeObject(forKey: "discount_price") as? String
        discountRs = aDecoder.decodeObject(forKey: "discount_rs") as? String
        discountType = aDecoder.decodeObject(forKey: "discount_type") as? String
        duration = aDecoder.decodeObject(forKey: "duration") as? String
        endDate = aDecoder.decodeObject(forKey: "end_date") as? String
        enrollStatus = aDecoder.decodeObject(forKey: "enroll_status") as? String
        extCertTemp = aDecoder.decodeObject(forKey: "ext_cert_temp") as? AnyObject
        external = aDecoder.decodeObject(forKey: "external") as? String
        externalUrl = aDecoder.decodeObject(forKey: "external_url") as? AnyObject
        finalPrice = aDecoder.decodeObject(forKey: "final_price") as? String
        gstPrice = aDecoder.decodeObject(forKey: "gst_price") as? String
        id = aDecoder.decodeObject(forKey: "id") as? String
        imagePath = aDecoder.decodeObject(forKey: "image_path") as? String
        invoicePrecentage = aDecoder.decodeObject(forKey: "invoice_precentage") as? String
        language = aDecoder.decodeObject(forKey: "language") as? String
        learningHours = aDecoder.decodeObject(forKey: "learning_hours") as? String
        learningPath = aDecoder.decodeObject(forKey: "learning_path") as? String
        ltype = aDecoder.decodeObject(forKey: "ltype") as? String
        name = aDecoder.decodeObject(forKey: "name") as? String
        openDuration = aDecoder.decodeObject(forKey: "open_duration") as? String
        openPeriod = aDecoder.decodeObject(forKey: "open_period") as? String
        paymentStatus = aDecoder.decodeObject(forKey: "payment_status") as? String
        photoConfirm = aDecoder.decodeObject(forKey: "photo_confirm") as? String
        price = aDecoder.decodeObject(forKey: "price") as? String
        priceType = aDecoder.decodeObject(forKey: "price_type") as? String
        privilegeUserId = aDecoder.decodeObject(forKey: "privilege_user_id") as? String
        proctored = aDecoder.decodeObject(forKey: "proctored") as? String
        publisherName = aDecoder.decodeObject(forKey: "publisher_name") as? String
        registrationEndDate = aDecoder.decodeObject(forKey: "registration_end_date") as? String
        registrationOpenDate = aDecoder.decodeObject(forKey: "registration_open_date") as? String
        resumeCnt = aDecoder.decodeObject(forKey: "resumeCnt") as? String
        resumeqry = aDecoder.decodeObject(forKey: "resumeqry") as? String
        startDate = aDecoder.decodeObject(forKey: "start_date") as? String
        started = aDecoder.decodeObject(forKey: "started") as? Int
        status = aDecoder.decodeObject(forKey: "status") as? String
        studentsLimit = aDecoder.decodeObject(forKey: "students_limit") as? String
        topics = aDecoder.decodeObject(forKey: "topics") as? [courseDetailsTopic]
        udemyCourse = aDecoder.decodeObject(forKey: "udemy_course") as? String
        udemyCourseId = aDecoder.decodeObject(forKey: "udemy_course_id") as? String
        udemyUrl = aDecoder.decodeObject(forKey: "udemy_url") as? AnyObject
        universities = aDecoder.decodeObject(forKey: "universities") as? String
        userId = aDecoder.decodeObject(forKey: "user_id") as? String
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if addedLibrary != nil{
            aCoder.encode(addedLibrary, forKey: "added_Library")
        }
        if author != nil{
            aCoder.encode(author, forKey: "author")
        }
        if batchId != nil{
            aCoder.encode(batchId, forKey: "batch_id")
        }
        if categoryId != nil{
            aCoder.encode(categoryId, forKey: "category_id")
        }
        if cerNoPrefix != nil{
            aCoder.encode(cerNoPrefix, forKey: "cer_no_prefix")
        }
        if cerSeqNo != nil{
            aCoder.encode(cerSeqNo, forKey: "cer_seq_no")
        }
        if certDiscountPercent != nil{
            aCoder.encode(certDiscountPercent, forKey: "cert_discount_percent")
        }
        if certDiscountPrice != nil{
            aCoder.encode(certDiscountPrice, forKey: "cert_discount_price")
        }
        if certDiscountRs != nil{
            aCoder.encode(certDiscountRs, forKey: "cert_discount_rs")
        }
        if certDiscountType != nil{
            aCoder.encode(certDiscountType, forKey: "cert_discount_type")
        }
        if certFinalPrice != nil{
            aCoder.encode(certFinalPrice, forKey: "cert_final_price")
        }
        if certGstPrice != nil{
            aCoder.encode(certGstPrice, forKey: "cert_gst_price")
        }
        if certPrice != nil{
            aCoder.encode(certPrice, forKey: "cert_price")
        }
        if certificateTemplate != nil{
            aCoder.encode(certificateTemplate, forKey: "certificate_template")
        }
        if certifiedBy != nil{
            aCoder.encode(certifiedBy, forKey: "certified_by")
        }
        if completed != nil{
            aCoder.encode(completed, forKey: "completed")
        }
        if courseDuration != nil{
            aCoder.encode(courseDuration, forKey: "course_duration")
        }
        if courseType != nil{
            aCoder.encode(courseType, forKey: "course_type")
        }
        if createdDate != nil{
            aCoder.encode(createdDate, forKey: "created_date")
        }
        if ctype != nil{
            aCoder.encode(ctype, forKey: "ctype")
        }
        if descriptionField != nil{
            aCoder.encode(descriptionField, forKey: "description")
        }
        if discountPercent != nil{
            aCoder.encode(discountPercent, forKey: "discount_percent")
        }
        if discountPrice != nil{
            aCoder.encode(discountPrice, forKey: "discount_price")
        }
        if discountRs != nil{
            aCoder.encode(discountRs, forKey: "discount_rs")
        }
        if discountType != nil{
            aCoder.encode(discountType, forKey: "discount_type")
        }
        if duration != nil{
            aCoder.encode(duration, forKey: "duration")
        }
        if endDate != nil{
            aCoder.encode(endDate, forKey: "end_date")
        }
        if enrollStatus != nil{
            aCoder.encode(enrollStatus, forKey: "enroll_status")
        }
        if extCertTemp != nil{
            aCoder.encode(extCertTemp, forKey: "ext_cert_temp")
        }
        if external != nil{
            aCoder.encode(external, forKey: "external")
        }
        if externalUrl != nil{
            aCoder.encode(externalUrl, forKey: "external_url")
        }
        if finalPrice != nil{
            aCoder.encode(finalPrice, forKey: "final_price")
        }
        if gstPrice != nil{
            aCoder.encode(gstPrice, forKey: "gst_price")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if imagePath != nil{
            aCoder.encode(imagePath, forKey: "image_path")
        }
        if invoicePrecentage != nil{
            aCoder.encode(invoicePrecentage, forKey: "invoice_precentage")
        }
        if language != nil{
            aCoder.encode(language, forKey: "language")
        }
        if learningHours != nil{
            aCoder.encode(learningHours, forKey: "learning_hours")
        }
        if learningPath != nil{
            aCoder.encode(learningPath, forKey: "learning_path")
        }
        if ltype != nil{
            aCoder.encode(ltype, forKey: "ltype")
        }
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }
        if openDuration != nil{
            aCoder.encode(openDuration, forKey: "open_duration")
        }
        if openPeriod != nil{
            aCoder.encode(openPeriod, forKey: "open_period")
        }
        if paymentStatus != nil{
            aCoder.encode(paymentStatus, forKey: "payment_status")
        }
        if photoConfirm != nil{
            aCoder.encode(photoConfirm, forKey: "photo_confirm")
        }
        if price != nil{
            aCoder.encode(price, forKey: "price")
        }
        if priceType != nil{
            aCoder.encode(priceType, forKey: "price_type")
        }
        if privilegeUserId != nil{
            aCoder.encode(privilegeUserId, forKey: "privilege_user_id")
        }
        if proctored != nil{
            aCoder.encode(proctored, forKey: "proctored")
        }
        if publisherName != nil{
            aCoder.encode(publisherName, forKey: "publisher_name")
        }
        if registrationEndDate != nil{
            aCoder.encode(registrationEndDate, forKey: "registration_end_date")
        }
        if registrationOpenDate != nil{
            aCoder.encode(registrationOpenDate, forKey: "registration_open_date")
        }
        if resumeCnt != nil{
            aCoder.encode(resumeCnt, forKey: "resumeCnt")
        }
        if resumeqry != nil{
            aCoder.encode(resumeqry, forKey: "resumeqry")
        }
        if startDate != nil{
            aCoder.encode(startDate, forKey: "start_date")
        }
        if started != nil{
            aCoder.encode(started, forKey: "started")
        }
        if status != nil{
            aCoder.encode(status, forKey: "status")
        }
        if studentsLimit != nil{
            aCoder.encode(studentsLimit, forKey: "students_limit")
        }
        if topics != nil{
            aCoder.encode(topics, forKey: "topics")
        }
        if udemyCourse != nil{
            aCoder.encode(udemyCourse, forKey: "udemy_course")
        }
        if udemyCourseId != nil{
            aCoder.encode(udemyCourseId, forKey: "udemy_course_id")
        }
        if udemyUrl != nil{
            aCoder.encode(udemyUrl, forKey: "udemy_url")
        }
        if universities != nil{
            aCoder.encode(universities, forKey: "universities")
        }
        if userId != nil{
            aCoder.encode(userId, forKey: "user_id")
        }
    }
}
