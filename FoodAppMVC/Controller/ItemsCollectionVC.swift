//
//  ItemsCollectionVC.swift
//  FoodAppMVC
//
//  Created by Руслан Забиран on 23.11.23.
//

import UIKit

private let reuseIdentifier = "itemCell"

class ItemsCollectionVC: UICollectionViewController {
    
    let edgeInset: Double = 10
    let numberOfCellsInRow = 2

    var itemsArray: [Item] = [Item(name: "Absolut Emo", imageName: "absolut-emo", price: 20),
                              Item(name: "Egizonskiy blin", imageName: "blin-egizon", price: 35),
                              Item(name: "Chern-Vkusn", imageName: "chern-vkusn", price: 49),
                              Item(name: "Gribnoe Jele", imageName: "jele-grib", price: 25),
                              Item(name: "Kreslishi", imageName: "kreslishi", price: 15),
                              Item(name: "Zelenie Pirogi", imageName: "zelen-pirogi", price: 28),
                              Item(name: "Chern-Vkusn", imageName: "chern-vkusn", price: 49)]
    
    var menuCategory: MenuItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemsArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? ItemCell {
            let item = itemsArray[indexPath.item]
            cell.item = item
            
            return cell
        }
    
        return UICollectionViewCell()
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}

extension ItemsCollectionVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        UIEdgeInsets(top: CGFloat(edgeInset),
                     left: CGFloat(edgeInset),
                     bottom: CGFloat(edgeInset),
                     right: CGFloat(edgeInset))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(edgeInset)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = Double(view.window?.windowScene?.screen.bounds.width ?? 1)
        print(screenWidth)
        let totalCellWidth = screenWidth - (edgeInset * Double((numberOfCellsInRow + 1)))
        let width = totalCellWidth / Double(numberOfCellsInRow)
        let height = width * 1.5
        
        return CGSize(width: width, height: height)
        
    }
    
    
    
}
