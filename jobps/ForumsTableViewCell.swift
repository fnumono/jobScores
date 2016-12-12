//
//  ForumsTableViewCell.swift
//  jobps
//
//  Created by pramono wang on 12/11/16.
//  Copyright © 2016 fnu. All rights reserved.
//

import UIKit

class ForumsTableViewCell: UITableViewCell {

    @IBOutlet weak var companyImage: UIImageView!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var companyData: UILabel!
    @IBOutlet weak var companyScore: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        companyImage.clipsToBounds = true
        companyImage.layer.masksToBounds = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
