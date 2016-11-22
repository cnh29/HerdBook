//
//  FourthViewController.swift
//  HerdBook
//
//  Created by Cameron Harris on 17/11/16.
//  Copyright © 2016 Cameron Harris. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backFromModal(segue: UIStoryboardSegue) {
        print("and we are back")
        // Switch to the second tab (tabs are numbered 0, 1, 2)
        self.tabBarController?.selectedIndex = 1
    }
    
    //MARK: Actions
    @IBAction func gainReportBtn(_ sender: Any) {
    }
    @IBAction func purchasesBtn(_ sender: Any) {
    }
    @IBAction func salesBtn(_ sender: Any) {
    }
    @IBAction func cattleDeathsBtn(_ sender: Any) {
    }
    @IBAction func cattleOnHandBtn(_ sender: Any) {
    }
    @IBAction func herdWeightPerWeekBtn(_ sender: Any) {
    }
}
