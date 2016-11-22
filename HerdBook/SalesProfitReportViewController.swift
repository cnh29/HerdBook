//
//  SalesProfitReportViewController.swift
//  HerdBook
//
//  Created by Cameron Harris on 21/11/16.
//  Copyright © 2016 Cameron Harris. All rights reserved.
//

import UIKit

class SalesProfitReportViewController: UIViewController, UITableViewDataSource, UITabBarDelegate {

    //MARK: Variables/Constants
    //Row Values
    
    let purchases:[String] = ["1","2"]
    let deathInfo:[String] = ["00","00"]
    let BloodInfo:[String] = ["1.34","2.45"]
    let profitLoss:[String] = ["345.6","678.2"]
    
    //Column Values
    let column1Data:[String] = ["69","69"]
    let column2Data:[String] = ["30","30"]
    let column3Data:[String] = ["3","3"]
    let column4Data:[String] = ["4","4"]
    let column5Data:[String] = ["5","5"]
    
    //Column Headers
   
    let columnHeadingsBlood:[String] = ["EID","Carcass Weight (kg)","Carcass Yield (%)","Net Carcass ($)","Net Blood Yield (L)"]
    let columnHeadingsProfitLoss:[String] = ["EID","Cost Incl. Freight ($)","Net Blood and Carcass ($)","Net Profit/Loss ($)","Net Profit/Loss per Day ($)"]
    
    //MARK: Outlets
    @IBOutlet weak var SalesProfitSegment: UISegmentedControl!
    
    //Two table views on one view controller
    @IBOutlet weak var SalesReportTableView: UITableView!
    @IBOutlet weak var SalesHeaderTableView: UITableView!

    
    //MARK: Actions
    
    @IBAction func salesControlSegment(_ sender: Any) {
        SalesReportTableView.reloadData()
        SalesHeaderTableView.reloadData()
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var myValue = 0
        if tableView == self.SalesReportTableView {
            
            switch (SalesProfitSegment.selectedSegmentIndex) {
            case 0:
                myValue = BloodInfo.count
                break
                
            case 1:
                myValue = profitLoss.count
                break
                
            default:
                break
            }
        }
        
        if tableView == self.SalesHeaderTableView {
            myValue = 1
            }
        return myValue
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var myCell: SalesProfitTableView!
        if tableView == self.SalesReportTableView {
    
            myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! SalesProfitTableView
            switch (SalesProfitSegment.selectedSegmentIndex){
            case 0:
                myCell.column1.text = column1Data[indexPath.row]
                myCell.column1.textAlignment = .center
                myCell.column2.text = column2Data[indexPath.row]
                myCell.column2.textAlignment = .center
                myCell.column3.text = column3Data[indexPath.row]
                myCell.column4.text = column4Data[indexPath.row]
                myCell.column5.text = column5Data[indexPath.row]
                //myCell.textLabel?.text = purchases[indexPath.row]
                break
            case 1:
                myCell.column1.text = column2Data[indexPath.row]
                myCell.column1.textAlignment = .center
                myCell.column2.text = column2Data[indexPath.row]
                myCell.column2.textAlignment = .center
                myCell.column3.text = column2Data[indexPath.row]
                myCell.column4.text = column2Data[indexPath.row]
                myCell.column5.text = column2Data[indexPath.row]
                //myCell.textLabel?.text = deathInfo[indexPath.row]
                break
                
            default:
                break
                
            }
        }
        if tableView == self.SalesHeaderTableView {
            
            myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! SalesProfitTableView
            switch (SalesProfitSegment.selectedSegmentIndex){

            case 0:
                myCell.columnHeader1.text = columnHeadingsBlood[0]
                myCell.columnHeader2.text = columnHeadingsBlood[1]
                myCell.columnHeader3.text = columnHeadingsBlood[2]
                myCell.columnHeader4.text = columnHeadingsBlood[3]
                myCell.columnHeader5.text = columnHeadingsBlood[4]
                break
            case 1:
                myCell.columnHeader1.text = columnHeadingsProfitLoss[0]
                myCell.columnHeader2.text = columnHeadingsProfitLoss[1]
                myCell.columnHeader3.text = columnHeadingsProfitLoss[2]
                myCell.columnHeader4.text = columnHeadingsProfitLoss[3]
                myCell.columnHeader5.text = columnHeadingsProfitLoss[4]
                break
                
            default:
                break
                
            }
        }
        
        return myCell
    }
    
//        var myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! SalesProfitTableView
//        
//        
//        switch (SalesProfitSegment.selectedSegmentIndex){
//        case 0:
//            myCell.column1.text = column1Data[indexPath.row]
//            myCell.column1.textAlignment = .center
//            myCell.column2.text = column2Data[indexPath.row]
//            myCell.column2.textAlignment = .center
//            myCell.column3.text = column3Data[indexPath.row]
//            myCell.column4.text = column4Data[indexPath.row]
//            myCell.column5.text = column5Data[indexPath.row]
//            //myCell.textLabel?.text = purchases[indexPath.row]
//            break
//        case 1:
//            myCell.column1.text = column2Data[indexPath.row]
//            myCell.column1.textAlignment = .center
//            myCell.column2.text = column2Data[indexPath.row]
//            myCell.column2.textAlignment = .center
//            myCell.column3.text = column2Data[indexPath.row]
//            myCell.column4.text = column2Data[indexPath.row]
//            myCell.column5.text = column2Data[indexPath.row]
//            //myCell.textLabel?.text = deathInfo[indexPath.row]
//            break
//        case 2:
//            myCell.column1.text = column3Data[indexPath.row]
//            myCell.column1.textAlignment = .center
//            myCell.column2.text = column3Data[indexPath.row]
//            myCell.column2.textAlignment = .center
//            myCell.column3.text = column3Data[indexPath.row]
//            myCell.column4.text = column3Data[indexPath.row]
//            myCell.column5.text = column3Data[indexPath.row]
//            //myCell.textLabel?.text = BloodInfo[indexPath.row]
//            break
//        case 3:
//            myCell.column1.text = column4Data[indexPath.row]
//            myCell.column1.textAlignment = .center
//            myCell.column2.text = column1Data[indexPath.row]
//            myCell.column2.textAlignment = .center
//            myCell.column3.text = column1Data[indexPath.row]
//            myCell.column4.text = column1Data[indexPath.row]
//            myCell.column5.text = column1Data[indexPath.row]
//            //myCell.textLabel?.text = profitLoss[indexPath.row]
//            break
//            
//        default:
//            break
//            
//        }
//        return myCell
//    }

//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        var title = ""
//        switch (SalesProfitSegment.selectedSegmentIndex){
//        case 0:
//            
//            title = "Purchases"
//            break
//        case 1:
//            title = "Death Info"
//            break
//        case 2:
//            title = "Blood Info"
//            break
//        case 3:
//            title = "Profit and Loss"
//            break
//            
//        default:
//            break
//            
//        }
//        return title
//    }
}
