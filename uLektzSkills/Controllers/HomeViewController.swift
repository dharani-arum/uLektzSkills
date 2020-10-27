//
//  HomeViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 20/10/20.
//

import UIKit
import Alamofire
import SwiftyJSON


class HomeViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegateFlowLayout {
   
    
    
    var countnewRelease = Int()
    var countliveCourses = Int()
    var countfreeCourses = Int()
    @IBOutlet weak var collectionView3: UICollectionView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var titlenewRelase: UILabel!
    @IBOutlet weak var titleliveCourses: UILabel!
    @IBOutlet weak var titlefreecourses: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if Connectivity.isConnectedToInternet {
             print("Connected")
        let params = [
           
            "functionName":"mixedCourse",
            "userId":"192277",
            "publisherId":"450419"
            //"userId":Singleton.sharedInstance.loginModel[0].userInfo.userId!,
              

            ] as [String : Any]
       
                
        Alamofire.request(Constants.baseUrl, method: .post,parameters: params,encoding: JSONEncoding.default).responseJSON { (response) in
            
            if response.result.isSuccess {
                let jsonResponse = response.result.value as! NSDictionary
                print(jsonResponse)

                let model = MixedCourseModel(fromDictionary: response.result.value as! [String : Any])
                Singleton.sharedInstance.homeMixedcourseModel =  [model]
                
                self.countnewRelease = Singleton.sharedInstance.homeMixedcourseModel[0].newReleases.count
                self.countliveCourses = Singleton.sharedInstance.homeMixedcourseModel[0].liveCourses.count
                self.countfreeCourses = Singleton.sharedInstance.homeMixedcourseModel[0].freeCourses.count
                self.titlenewRelase.text = "New Releases"
                self.titleliveCourses.text = "Online Courses"
                self.titlefreecourses.text = "Free Courses"
                self.collectionView.reloadData()
                self.collectionView2.reloadData()
                self.collectionView3.reloadData()
                
                
            }
        }
        }
            else
            {
            print("No Internet")
                AlertControl.Instance.singleButtonAlert(inViewController: self, title: "uLektzSkills", message: "No Internet connection. Please turn on wifi", buttonTitle: "Ok", actionBlock: {})
            }
        // Do any additional setup after loading the view.
      
        }
  
    // MARK: - collectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView
        {
            return self.countnewRelease
        }
       else if collectionView == self.collectionView2
        {
            return self.countliveCourses
        }
       return self.countfreeCourses
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        
        if collectionView == self.collectionView
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
            cell.titleLbl.text = Singleton.sharedInstance.homeMixedcourseModel[0].newReleases[indexPath.item].name
            cell.subTitleLbl.text = Singleton.sharedInstance.homeMixedcourseModel[0].newReleases[indexPath.item].certifiedBy
            cell.desLbl.text = Singleton.sharedInstance.homeMixedcourseModel[0].newReleases[indexPath.item].firstName
            let amountStr = Singleton.sharedInstance.homeMixedcourseModel[0].newReleases[indexPath.item].price
            
            cell.amountLbl.text = "$" + amountStr!
            let totalStr = Singleton.sharedInstance.homeMixedcourseModel[0].newReleases[indexPath.item].finalPrice
            cell.totalLbl.text = "$" + totalStr!
            
            let imageString = Singleton.sharedInstance.homeMixedcourseModel[0].newReleases[indexPath.row].imagePath
            cell.imageVw.sd_setImage(with: URL(string: imageString!), placeholderImage: UIImage(named: ""))
           return cell
        }
       else if collectionView == self.collectionView2
        {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        
        cell.titleLbl.text = Singleton.sharedInstance.homeMixedcourseModel[0].liveCourses[indexPath.item].name
        cell.subTitleLbl.text = Singleton.sharedInstance.homeMixedcourseModel[0].liveCourses[indexPath.item].certifiedBy
        cell.desLbl.text = Singleton.sharedInstance.homeMixedcourseModel[0].liveCourses[indexPath.item].firstName
        let amountStr = Singleton.sharedInstance.homeMixedcourseModel[0].liveCourses[indexPath.item].price
        
        cell.amountLbl.text = "$" + amountStr!
        let totalStr = Singleton.sharedInstance.homeMixedcourseModel[0].liveCourses[indexPath.item].finalPrice
        cell.totalLbl.text = "$" + totalStr!
        
        let imageString = Singleton.sharedInstance.homeMixedcourseModel[0].liveCourses[indexPath.row].imagePath
        cell.imageVw.sd_setImage(with: URL(string: imageString!), placeholderImage: UIImage(named: ""))
       return cell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        
        cell.titleLbl.text = Singleton.sharedInstance.homeMixedcourseModel[0].freeCourses[indexPath.item].name
        cell.subTitleLbl.text = Singleton.sharedInstance.homeMixedcourseModel[0].freeCourses[indexPath.item].certifiedBy
        cell.desLbl.text = Singleton.sharedInstance.homeMixedcourseModel[0].freeCourses[indexPath.item].firstName
        let amountStr = Singleton.sharedInstance.homeMixedcourseModel[0].freeCourses[indexPath.item].price
        
        cell.amountLbl.text = "$" + amountStr!
        let totalStr = Singleton.sharedInstance.homeMixedcourseModel[0].freeCourses[indexPath.item].finalPrice
        cell.totalLbl.text = "$" + totalStr!
        
        let imageString = Singleton.sharedInstance.homeMixedcourseModel[0].freeCourses[indexPath.row].imagePath
        cell.imageVw.sd_setImage(with: URL(string: imageString!), placeholderImage: UIImage(named: ""))
       return cell
           
       
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//            let padding: CGFloat =  50
//        let collectionViewSize = self.collectionView.frame.size.width - padding
//
//            return CGSize(width: collectionViewSize/2, height: collectionViewSize/2)
//        }
//   
    
    // MARK: - tableView

  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
        }
        
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
     {
        if indexPath.row == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CartTableViewCell
            
          

        return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellone", for: indexPath) as! CartTableViewCell
        return cell
        }
     }
    
    
}
