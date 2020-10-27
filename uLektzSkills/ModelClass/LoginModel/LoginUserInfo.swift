//
//  LoginUserInfo.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on October 19, 2020

import Foundation


class LoginUserInfo : NSObject, NSCoding{

    var addedOerId : [AnyObject]!
    var aiStatus : String!
    var catNames : String!
    var couponUsdStus : Bool!
    var email : String!
    var firstName : String!
    var firstLoginStatus : Bool!
    var instNames : String!
    var instAddress : String!
    var institutionIds : String!
    var institutionNames : String!
    var instJoinStatus : String!
    var lastName : String!
    var liteCampus : String!
    var loginType : String!
    var mobileNo : String!
    var mycourseids : LoginMycourseid!
    var pendingInstIds : String!
    var profileImage : String!
    var referralUsedStatus : Bool!
    var registerRoleId : String!
    var role : AnyObject!
    var roleId : String!
    var settingProfile : String!
    var specialisation : String!
    var userId : String!
    var userInstLogos : String!
    var username : String!
    var userRoleIds : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        aiStatus = dictionary["ai_status"] as? String
        catNames = dictionary["cat_names"] as? String
        couponUsdStus = dictionary["couponUsdStus"] as? Bool
        email = dictionary["email"] as? String
        firstName = dictionary["first_name"] as? String
        firstLoginStatus = dictionary["firstLoginStatus"] as? Bool
        instNames = dictionary["inst_names"] as? String
        instAddress = dictionary["instAddress"] as? String
        institutionIds = dictionary["InstitutionIds"] as? String
        institutionNames = dictionary["InstitutionNames"] as? String
        instJoinStatus = dictionary["instJoinStatus"] as? String
        lastName = dictionary["last_name"] as? String
        liteCampus = dictionary["LiteCampus"] as? String
        loginType = dictionary["loginType"] as? String
        mobileNo = dictionary["mobile_no"] as? String
        pendingInstIds = dictionary["pending_inst_ids"] as? String
        profileImage = dictionary["profile_image"] as? String
        referralUsedStatus = dictionary["referral_used_status"] as? Bool
        registerRoleId = dictionary["register_role_id"] as? String
        role = dictionary["Role"] as AnyObject
        roleId = dictionary["role_id"] as? String
        settingProfile = dictionary["setting_profile"] as? String
        specialisation = dictionary["specialisation"] as? String
        userId = dictionary["user_id"] as? String
        userInstLogos = dictionary["userInstLogos"] as? String
        username = dictionary["username"] as? String
        userRoleIds = dictionary["userRoleIds"] as? String
        if let mycourseidsData = dictionary["mycourseids"] as? [String:Any]{
            mycourseids = LoginMycourseid(fromDictionary: mycourseidsData)
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if aiStatus != nil{
            dictionary["ai_status"] = aiStatus
        }
        if catNames != nil{
            dictionary["cat_names"] = catNames
        }
        if couponUsdStus != nil{
            dictionary["couponUsdStus"] = couponUsdStus
        }
        if email != nil{
            dictionary["email"] = email
        }
        if firstName != nil{
            dictionary["first_name"] = firstName
        }
        if firstLoginStatus != nil{
            dictionary["firstLoginStatus"] = firstLoginStatus
        }
        if instNames != nil{
            dictionary["inst_names"] = instNames
        }
        if instAddress != nil{
            dictionary["instAddress"] = instAddress
        }
        if institutionIds != nil{
            dictionary["InstitutionIds"] = institutionIds
        }
        if institutionNames != nil{
            dictionary["InstitutionNames"] = institutionNames
        }
        if instJoinStatus != nil{
            dictionary["instJoinStatus"] = instJoinStatus
        }
        if lastName != nil{
            dictionary["last_name"] = lastName
        }
        if liteCampus != nil{
            dictionary["LiteCampus"] = liteCampus
        }
        if loginType != nil{
            dictionary["loginType"] = loginType
        }
        if mobileNo != nil{
            dictionary["mobile_no"] = mobileNo
        }
        if pendingInstIds != nil{
            dictionary["pending_inst_ids"] = pendingInstIds
        }
        if profileImage != nil{
            dictionary["profile_image"] = profileImage
        }
        if referralUsedStatus != nil{
            dictionary["referral_used_status"] = referralUsedStatus
        }
        if registerRoleId != nil{
            dictionary["register_role_id"] = registerRoleId
        }
        if role != nil{
            dictionary["Role"] = role
        }
        if roleId != nil{
            dictionary["role_id"] = roleId
        }
        if settingProfile != nil{
            dictionary["setting_profile"] = settingProfile
        }
        if specialisation != nil{
            dictionary["specialisation"] = specialisation
        }
        if userId != nil{
            dictionary["user_id"] = userId
        }
        if userInstLogos != nil{
            dictionary["userInstLogos"] = userInstLogos
        }
        if username != nil{
            dictionary["username"] = username
        }
        if userRoleIds != nil{
            dictionary["userRoleIds"] = userRoleIds
        }
        if mycourseids != nil{
            dictionary["mycourseids"] = mycourseids.toDictionary()
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        addedOerId = aDecoder.decodeObject(forKey: "addedOerId") as? [AnyObject]
        aiStatus = aDecoder.decodeObject(forKey: "ai_status") as? String
        catNames = aDecoder.decodeObject(forKey: "cat_names") as? String
        couponUsdStus = aDecoder.decodeObject(forKey: "couponUsdStus") as? Bool
        email = aDecoder.decodeObject(forKey: "email") as? String
        firstName = aDecoder.decodeObject(forKey: "first_name") as? String
        firstLoginStatus = aDecoder.decodeObject(forKey: "firstLoginStatus") as? Bool
        instNames = aDecoder.decodeObject(forKey: "inst_names") as? String
        instAddress = aDecoder.decodeObject(forKey: "instAddress") as? String
        institutionIds = aDecoder.decodeObject(forKey: "InstitutionIds") as? String
        institutionNames = aDecoder.decodeObject(forKey: "InstitutionNames") as? String
        instJoinStatus = aDecoder.decodeObject(forKey: "instJoinStatus") as? String
        lastName = aDecoder.decodeObject(forKey: "last_name") as? String
        liteCampus = aDecoder.decodeObject(forKey: "LiteCampus") as? String
        loginType = aDecoder.decodeObject(forKey: "loginType") as? String
        mobileNo = aDecoder.decodeObject(forKey: "mobile_no") as? String
        mycourseids = aDecoder.decodeObject(forKey: "mycourseids") as? LoginMycourseid
        pendingInstIds = aDecoder.decodeObject(forKey: "pending_inst_ids") as? String
        profileImage = aDecoder.decodeObject(forKey: "profile_image") as? String
        referralUsedStatus = aDecoder.decodeObject(forKey: "referral_used_status") as? Bool
        registerRoleId = aDecoder.decodeObject(forKey: "register_role_id") as? String
        role = aDecoder.decodeObject(forKey: "Role") as AnyObject
        roleId = aDecoder.decodeObject(forKey: "role_id") as? String
        settingProfile = aDecoder.decodeObject(forKey: "setting_profile") as? String
        specialisation = aDecoder.decodeObject(forKey: "specialisation") as? String
        userId = aDecoder.decodeObject(forKey: "user_id") as? String
        userInstLogos = aDecoder.decodeObject(forKey: "userInstLogos") as? String
        username = aDecoder.decodeObject(forKey: "username") as? String
        userRoleIds = aDecoder.decodeObject(forKey: "userRoleIds") as? String
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if addedOerId != nil{
            aCoder.encode(addedOerId, forKey: "addedOerId")
        }
        if aiStatus != nil{
            aCoder.encode(aiStatus, forKey: "ai_status")
        }
        if catNames != nil{
            aCoder.encode(catNames, forKey: "cat_names")
        }
        if couponUsdStus != nil{
            aCoder.encode(couponUsdStus, forKey: "couponUsdStus")
        }
        if email != nil{
            aCoder.encode(email, forKey: "email")
        }
        if firstName != nil{
            aCoder.encode(firstName, forKey: "first_name")
        }
        if firstLoginStatus != nil{
            aCoder.encode(firstLoginStatus, forKey: "firstLoginStatus")
        }
        if instNames != nil{
            aCoder.encode(instNames, forKey: "inst_names")
        }
        if instAddress != nil{
            aCoder.encode(instAddress, forKey: "instAddress")
        }
        if institutionIds != nil{
            aCoder.encode(institutionIds, forKey: "InstitutionIds")
        }
        if institutionNames != nil{
            aCoder.encode(institutionNames, forKey: "InstitutionNames")
        }
        if instJoinStatus != nil{
            aCoder.encode(instJoinStatus, forKey: "instJoinStatus")
        }
        if lastName != nil{
            aCoder.encode(lastName, forKey: "last_name")
        }
        if liteCampus != nil{
            aCoder.encode(liteCampus, forKey: "LiteCampus")
        }
        if loginType != nil{
            aCoder.encode(loginType, forKey: "loginType")
        }
        if mobileNo != nil{
            aCoder.encode(mobileNo, forKey: "mobile_no")
        }
        if mycourseids != nil{
            aCoder.encode(mycourseids, forKey: "mycourseids")
        }
        if pendingInstIds != nil{
            aCoder.encode(pendingInstIds, forKey: "pending_inst_ids")
        }
        if profileImage != nil{
            aCoder.encode(profileImage, forKey: "profile_image")
        }
        if referralUsedStatus != nil{
            aCoder.encode(referralUsedStatus, forKey: "referral_used_status")
        }
        if registerRoleId != nil{
            aCoder.encode(registerRoleId, forKey: "register_role_id")
        }
        if role != nil{
            aCoder.encode(role, forKey: "Role")
        }
        if roleId != nil{
            aCoder.encode(roleId, forKey: "role_id")
        }
        if settingProfile != nil{
            aCoder.encode(settingProfile, forKey: "setting_profile")
        }
        if specialisation != nil{
            aCoder.encode(specialisation, forKey: "specialisation")
        }
        if userId != nil{
            aCoder.encode(userId, forKey: "user_id")
        }
        if userInstLogos != nil{
            aCoder.encode(userInstLogos, forKey: "userInstLogos")
        }
        if username != nil{
            aCoder.encode(username, forKey: "username")
        }
        if userRoleIds != nil{
            aCoder.encode(userRoleIds, forKey: "userRoleIds")
        }
    }
}
