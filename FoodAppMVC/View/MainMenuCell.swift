//
//  MainMenuCell.swift
//  FoodAppMVC
//
//  Created by Руслан Забиран on 22.11.23.
//

import UIKit

class MainMenuCell: UITableViewCell {

    @IBOutlet weak var menuImageView: UIImageView!
    
    @IBOutlet weak var menuLabel: UILabel!
    
    var menuItem: MenuItem? {
        didSet {
            if let image = UIImage(named: menuItem?.imageName ?? "error-pic") {
                menuImageView.image = image
            }
            menuLabel.text = menuItem?.name
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
