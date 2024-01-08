//
//  ShoppingListTableViewCell.swift
//  AssignmentTabelView
//
//  Created by Jae hyung Kim on 1/8/24.
//

import UIKit

class ShoppingListTableViewCell: UITableViewCell {
    @IBOutlet var checkBoxButton: UIButton!
    @IBOutlet var listTextLabel: UILabel!
    @IBOutlet var starButton: UIButton!
    @IBOutlet var cellBackView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
