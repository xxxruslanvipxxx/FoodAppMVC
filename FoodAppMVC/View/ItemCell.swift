//
//  ItemCell.swift
//  FoodAppMVC
//
//  Created by Руслан Забиран on 23.11.23.
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    var currency: Character = "$"
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemPriceLabel: UILabel!
    
    var item: Item? {
        didSet {
            if let imageName = item?.imageName {
                itemImageView.image = UIImage(named: imageName)
            }
            itemNameLabel.text = item?.name
            itemPriceLabel.text = "\(currency) \(item?.price ?? 0)"
            
            self.backgroundColor = .yellow
        }
    }
}
