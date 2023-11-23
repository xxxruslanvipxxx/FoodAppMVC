//
//  MainMenuTVC.swift
//  FoodAppMVC
//
//  Created by Руслан Забиран on 22.11.23.
//

import UIKit

let showItemsSegue = "showItemsSegue"

class MainMenuTVC: UITableViewController {

    
    var menuItemsArray: [MenuItem] = [MenuItem(name: "Pizza", imageName: "pizza-category"),
                                      MenuItem(name: "Breakfast", imageName: "breakfast-category"),
                                      MenuItem(name: "Sushi", imageName: "sushi-category"),
                                      MenuItem(name: "Vegan", imageName: "vegan-category"),
                                      MenuItem(name: "Burgers", imageName: "burger-category")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItemsArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as? MainMenuCell {
            let item = menuItemsArray[indexPath.item]
            cell.menuItem = item
        }
        return UITableViewCell()
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("row selected")
        let menuItem = menuItemsArray[indexPath.row]
        self.performSegue(withIdentifier: showItemsSegue, sender: menuItem)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == showItemsSegue {
            if let itemsCVC = segue.destination as? ItemsCollectionVC {
                if let menuItem = sender as? MenuItem {
                    print("1")
                    itemsCVC.menuCategory = menuItem
                }
            }
        }
    }

}
