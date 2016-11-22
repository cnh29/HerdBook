//
//  SalesProfitTableView.swift
//  HerdBook
//
//  Created by Cameron Harris on 22/11/16.
//  Copyright © 2016 Cameron Harris. All rights reserved.
//

import UIKit

class SalesProfitTableView: UITableViewCell {

    //MARK: Outlets
    @IBOutlet weak var column1: UILabel!
    @IBOutlet weak var column2: UILabel!
    @IBOutlet weak var column3: UILabel!
    @IBOutlet weak var column4: UILabel!
    @IBOutlet weak var column5: UILabel!
    
    @IBOutlet weak var columnHeader1: UILabel!
    @IBOutlet weak var columnHeader2: UILabel!
    @IBOutlet weak var columnHeader3: UILabel!
    @IBOutlet weak var columnHeader4: UILabel!
    @IBOutlet weak var columnHeader5: UILabel!
    
 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
