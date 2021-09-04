//
//  TableViewCell.swift
//  tableViewDemo
//
//  Created by Ahmed Sabry on 04/09/2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLB_OT: UILabel!
    @IBOutlet weak var clickBT_OT: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func btnAction(_ sender: Any) {
        print("Done")

    }
}
