//
//  myHerdTableViewCell.swift
//  HerdBook
//
//  Created by Cameron Harris on 20/11/16.
//  Copyright © 2016 Cameron Harris. All rights reserved.
//

import UIKit

class myHerdTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    var labelNames: [String] = ["EIDLabel", "VIDLabel", "purchasedLabel", "categoryLabel", "breedLabel", "supplierLabel", "currentWeightLabel"]
    
    //MARK: Outlets
    
    @IBOutlet weak var EIDLabel: UILabel!
    @IBOutlet weak var VIDLabel: UILabel!
    @IBOutlet weak var purchasedLabel: UILabel!
    @IBOutlet weak var birthdateLabel: UILabel!
    @IBOutlet weak var currentWeightLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var supplierLabel: UILabel!
    
    
    //MARK: Aligning words in label to centre
    
    
    
    
    
    
    
}
