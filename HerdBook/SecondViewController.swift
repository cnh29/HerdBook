//
//  SecondViewController.swift
//  HerdBook
//
//  Created by Cameron Harris on 17/11/16.
//  Copyright © 2016 Cameron Harris. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func backFromModalDetailedmyHerd(segue: UIStoryboardSegue) {
        print("and we are back")
        // Switch to the second tab (tabs are numbered 0, 1, 2)
        self.tabBarController?.selectedIndex = 1
    }
    
    var electronicTagID : [String] = ["942 000015917632", "982 123470596002", "982 123474813391", "982 123474813598", "982 123474813601", "982 123474813602", "982 123474813631"]
    var VIDLabelVar: [String] = ["34","56","99","1","3","69", "45"]
    var filteredItems: [String] = ["1", "2", "3", "4", "5", "6", "7"]
    
    var searchController: UISearchController!

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchController.isActive {
            return filteredItems.count
        } else {
            return electronicTagID.count
        }
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! myHerdTableViewCell
        
        cell.EIDLabel.text = electronicTagID[indexPath.row]
        cell.EIDLabel.textAlignment = .center
        
        cell.VIDLabel.text = VIDLabelVar[indexPath.row]
        cell.VIDLabel.textAlignment = .center
        
        cell.currentWeightLabel.text = VIDLabelVar[indexPath.row]
        cell.currentWeightLabel.textAlignment = .center
        
        cell.purchasedLabel.text = VIDLabelVar[indexPath.row]
        cell.purchasedLabel.textAlignment = .center
        
        cell.birthdateLabel.text = VIDLabelVar[indexPath.row]
        cell.birthdateLabel.textAlignment = .center
        
        cell.sexLabel.text = VIDLabelVar[indexPath.row]
        cell.sexLabel.textAlignment = .center
        
        cell.breedLabel.text = VIDLabelVar[indexPath.row]
        cell.breedLabel.textAlignment = .center
        
        cell.supplierLabel.text = VIDLabelVar[indexPath.row]
        cell.supplierLabel.textAlignment = .center
        
        return cell
    }

//    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        let selected = electronicTagID[indexPath.row]
//        
//        let detailedVC: DetailedmyHerdVC = self.storyboard?.instantiateViewController(withIdentifier: "detailedViewController") as! DetailedmyHerdVC
//        
//        detailedVC.EIDLabelDetailed.text = selected
//        self.present(detailedVC, animated: true)
//        
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // set up search bar
        searchController = UISearchController(searchResultsController: nil)
        searchController.dimsBackgroundDuringPresentation = true
        searchController.searchBar.sizeToFit()
        
        searchController.searchResultsUpdater = self
        
        tableView.tableHeaderView = searchController.searchBar
        tableView.reloadData()
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        filteredItems.removeAll(keepingCapacity: false)
        
        //filtered items
        filteredItems = electronicTagID.filter {
            tag in
            
            tag.lowercased().contains(searchController.searchBar.text!)
        }
        tableView.reloadData()
        
    }
    
}




 
