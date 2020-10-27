//
//  CartTableViewCell.swift
//  uLektzSkills
//
//  Created by Lingeswaran R on 20/10/20.
//

import UIKit
import FloatRatingView

class CartTableViewCell: UITableViewCell {

    @IBOutlet weak var imageVw: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var rateLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    
    @IBOutlet weak var accountLbl: UILabel!
    
    @IBOutlet weak var courseBtn: UIButton!
    
    
    
    @IBOutlet weak var label: UILabel!
    
   
    ////////////// COURSE DETAIL/////////////////////////////////
    
    
    @IBOutlet weak var courseTitleLbl: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var offerByLbl: UILabel!
    @IBOutlet weak var coverImgView: UILabel!
    @IBOutlet weak var certifiedByLbl: UILabel!
    @IBOutlet weak var totalCorceLbl: UILabel!
    @IBOutlet weak var priceCourseLbl: UILabel!
    @IBOutlet weak var starRateView: FloatRatingView!
    
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var expireBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
