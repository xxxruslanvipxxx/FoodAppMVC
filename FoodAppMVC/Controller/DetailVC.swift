//
//  DetailVC.swift
//  FoodAppMVC
//
//  Created by Руслан Забиран on 30.11.23.
//

import UIKit

class DetailVC: UIViewController {
    
    //MARK: - Variable Properties
    var item: Item?
    
    //MARK: - IBOutlets
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
    
    @IBOutlet weak var detailDescriptionTextView: UITextView! {
        didSet {
            guard let description = item?.description else { return }
            detailDescriptionTextView.text = description
        }
    }
    
    @IBOutlet weak var weightLabel: UILabel! {
        didSet {
            guard let weight = item?.weight else { return }
            weightLabel.text = String(weight)
        }
    }
    
    @IBOutlet weak var priceLabel: UILabel! {
        didSet {
            guard let price = item?.price else { return }
            priceLabel.text = "$\(price)"
        }
    }
    
    @IBOutlet weak var addToCartButton: UIButton!
    
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    
    @IBOutlet weak var numberStepper: UIStepper!
    
    //MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - IBAActions
    @IBAction func stepperValueChange(_ sender: UIStepper) {
        let value = Int(sender.value)
        numberOfItemsLabel.text = "x\(value)"
    }
    
    @IBAction func addToCartAction(_ sender: UIButton) {
        
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
