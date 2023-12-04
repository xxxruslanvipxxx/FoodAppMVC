//
//  DetailVC.swift
//  FoodAppMVC
//
//  Created by Руслан Забиран on 30.11.23.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var detailImageView: UIImageView! {
        didSet {
            guard let imageName = item?.imageName else {return}
            detailImageView.image = UIImage(named: imageName)
        }
    }
    
    @IBOutlet weak var detailLabel: UILabel! {
        didSet {
            detailLabel.text = item?.name
        }
    }
    
    var item: Item?
//    {
//        didSet {
//            if let imageName = item?.imageName {
//               detailImageView.image = UIImage(named: imageName)
//           }
//           detailLabel.text = item?.name
//        }
//    }
//    public func setupVC(sender: Item) {
//        if let imageName = sender.imageName {
//            detailImageView.image = UIImage(named: imageName)
//        }
//        detailLabel.text = sender.name
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
