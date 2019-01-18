//
//  ViewController.swift
//  tipcaculator
//
//  Created by Jiade Lin on 1/18/19.
//  Copyright © 2019 Jiade Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billfilled: UITextField!
    
    @IBOutlet weak var tipcontrol: UISegmentedControl!
    @IBOutlet weak var Totallable: UILabel!
    @IBOutlet weak var Tiplable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        let tippercentages=[0.18,0.2,0.25]
        
        let bill = Double(billfilled.text!) ?? 0
        let tip = bill*tippercentages[tipcontrol.selectedSegmentIndex]
        let total = bill + tip
        Tiplable.text=String(format: "$%.2f", tip)
        Totallable.text=String(format: "$%.2f", total)
    }
    
}

