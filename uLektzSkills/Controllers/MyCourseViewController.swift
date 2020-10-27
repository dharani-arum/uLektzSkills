//
//  MyCourseViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 20/10/20.
//

import UIKit
import Alamofire
import SwiftyJSON

class MyCourseViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var courseCount = Int()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()

        if Connectivity.isConnectedToInternet {
             print("Connected")
        let params = [
           
            "functionName":"mySkills",
            "userId":"192277",
            //"userId":Singleton.sharedInstance.loginModel[0].userInfo.userId!,
                "srchTxt":""

           
            ] as [String : Any]
       
                
        Alamofire.request(Constants.baseUrl, method: .post,parameters: params,encoding: JSONEncoding.default).responseJSON { (response) in
            
            if response.result.isSuccess {
                //let responseJSON = JSON(response.result.value!)
                let jsonResponse = response.result.value as! NSDictionary
                print(jsonResponse)

                let model = MycourseModel(fromDictionary: response.result.value as! [String : Any])
                Singleton.sharedInstance.mycourseModel =  [model]
                
                self.courseCount = Singleton.sharedInstance.mycourseModel[0].skillInfo.count
                self.tableView.reloadData()
                
            }
        }
        }
            else
            {
            print("No Internet")
                AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "No Internet connection. Please turn on wifi", buttonTitle: "Ok", actionBlock: {})
            }
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.courseCount
        }
        
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CartTableViewCell
        let imageString = Singleton.sharedInstance.mycourseModel[0].skillInfo[indexPath.row].imagePath
        cell.imageVw.sd_setImage(with: URL(string: imageString!), placeholderImage: UIImage(named: ""))
        cell.imageVw.layer.cornerRadius = 10
        cell.titleLbl.text = Singleton.sharedInstance.mycourseModel[0].skillInfo[indexPath.row].courseName
        cell.subTitle.text = Singleton.sharedInstance.mycourseModel[0].skillInfo[indexPath.row].publisherName
        
        let courseSts = Singleton.sharedInstance.mycourseModel[0].skillInfo[indexPath.row].courseTimeStatus
        cell.courseBtn.setTitle(courseSts, for: .normal)
       return cell
     }
}
