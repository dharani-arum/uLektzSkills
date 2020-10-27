//
//  CartViewController.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 20/10/20.
//

import UIKit
import SwiftyJSON
import Alamofire
import SDWebImage

class CartViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var cartCount = Int()
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var buynowBtn: UIButton!
    @IBOutlet weak var originalPriceLbl: UILabel!
    @IBOutlet weak var sellingPriceLbl: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        buynowBtn.layer.cornerRadius = 10
        tableView.tableFooterView = UIView()

        if Connectivity.isConnectedToInternet {
             print("Connected")
        let params = [
           
            "functionName":"mycart",
            "userId":"192277"
            //"userId":Singleton.sharedInstance.loginModel[0].userInfo.userId!

           
            ] as [String : Any]
       
                
        Alamofire.request(Constants.baseUrl, method: .post,parameters: params,encoding: JSONEncoding.default).responseJSON { (response) in
            
            if response.result.isSuccess {
                //let responseJSON = JSON(response.result.value!)
                let jsonResponse = response.result.value as! NSDictionary
                print(jsonResponse)

                let model = MycartRootClass(fromDictionary: response.result.value as! [String : Any])
                Singleton.sharedInstance.myCartModel =  [model]
                
                self.cartCount = Singleton.sharedInstance.myCartModel[0].output.result.cartInfo.count
                
                self.sellingPriceLbl.text  =  String(format: "$%@",Singleton.sharedInstance.myCartModel[0].output.result.totsellingamt as! CVarArg)
              

               
                let rateStr = String(Singleton.sharedInstance.myCartModel[0].output.result.netAmount)
                
                let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: "$" + rateStr)
                    attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
                self.originalPriceLbl.attributedText = attributeString
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
        return self.cartCount
        }
        
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CartTableViewCell
        
        let imageString = Singleton.sharedInstance.myCartModel[0].output.result.cartInfo[indexPath.row].imagePath
        cell.imageVw.sd_setImage(with: URL(string: imageString!), placeholderImage: UIImage(named: ""))
        cell.imageVw.layer.cornerRadius = 10
        cell.titleLbl.text = Singleton.sharedInstance.myCartModel[0].output.result.cartInfo[indexPath.row].name
        cell.subTitle.text = Singleton.sharedInstance.myCartModel[0].output.result.cartInfo[indexPath.row].publishername
        let rateStr = Singleton.sharedInstance.myCartModel[0].output.result.cartInfo[indexPath.row].originalPrice
       
     
        let priceStr =   Singleton.sharedInstance.myCartModel[0].output.result.cartInfo[indexPath.row].sellingPrice
        
        cell.rateLbl.text = "$" + rateStr!
        
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: "$" + priceStr!)
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        cell.priceLbl.attributedText = attributeString

            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("You tapped cell number \(indexPath.row).")
        }

  
   

}
