//
//  CourseDetailViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 22/10/20.
//

import UIKit
import Alamofire
import SwiftyJSON

class CourseDetailViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableVw: UITableView!
    var titleStr = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        if Connectivity.isConnectedToInternet {
//             print("Connected")
//        let params = [
//
//            "functionName":"courseDetail",
//                "userId":"192287",
//                "courseId":"30"
//            //"userId":Singleton.sharedInstance.loginModel[0].userInfo.userId!,
//
//
//            ] as [String : Any]
//
//
//        Alamofire.request(Constants.baseUrl, method: .post,parameters: params,encoding: JSONEncoding.default).responseJSON { (response) in
//
//            if response.result.isSuccess {
//                let jsonResponse = response.result.value as! NSDictionary
//                print(jsonResponse)
//
//
//                let model = courseDetailsModel(fromDictionary: response.result.value as! [String : Any])
//                Singleton.sharedInstance.coursedetModel =  [model]
//                self.titleStr = Singleton.sharedInstance.coursedetModel[0].courseDetail[0].name
//                self.tableVw.reloadData()
//            }
//        }
//        }
//            else
//            {
//            print("No Internet")
//                AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "No Internet connection. Please turn on wifi", buttonTitle: "Ok", actionBlock: {})
//            }
//        // Do any additional setup after loading the view.
//
        
        
        let stringParams : String = "<msg id=\"123123\" reqTime=\"123123\">" +
               "<params class=\"API\">" +
               "<param name=\"param1\">123213</param>" +
               "<param name=\"param2\">1232131</param>" +
               "</params>" +
           "</msg>"

           let url = URL(string:"https://www.ulektz.com/ulektz/app/webroot/edulektzAPI/index.php?wsdl")
           var xmlRequest = URLRequest(url: url!)
           xmlRequest.httpBody = stringParams.data(using: String.Encoding.utf8, allowLossyConversion: true)
           xmlRequest.httpMethod = "POST"
           xmlRequest.addValue("application/xml", forHTTPHeaderField: "Content-Type")


           Alamofire.request(xmlRequest)
                   .responseData { (response) in
                    let stringResponse: String = (String(data: response.data!, encoding: String.Encoding.utf8) as String?)!
                       debugPrint(stringResponse)
           }

        }
    
    
    
    
    // MARK: - tableview
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
        }
        
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
     {
        if indexPath.row == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CartTableViewCell
          cell.courseTitleLbl.text =  self.titleStr
            
        return cell
        }
        else if indexPath.row == 1
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "celltwo", for: indexPath) as! CartTableViewCell
            
          

        return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellthree", for: indexPath) as! CartTableViewCell
        return cell
        }
     }

   
}
