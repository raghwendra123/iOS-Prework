//
//  ViewController.swift
//  Tip
//
//  Created by rraghwen on 12/15/15.
//  Copyright (c) 2015 Raghwendra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bill: UITextField!
    @IBOutlet weak var tiplabel: UILabel!
    @IBOutlet weak var totallabel: UILabel!
    @IBOutlet weak var tipcontrol: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tiplabel.text="$0.00"
        totallabel.text="$0.00"
        //let defaults = NSUserDefaults.standardUserDefaults()
        //let tipper = defaults.doubleForKey("tipcontrol")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        //print("view appeared")
        let defaults = NSUserDefaults.standardUserDefaults()
        let percent=defaults.integerForKey("tip_percent")
        tipcontrol.selectedSegmentIndex = percent
        self.oneditchange(self)
    }

    @IBAction func oneditchange(sender: AnyObject) {
        var tippercents=[0.18, 0.2, 0.22]
        let tipper=tippercents[tipcontrol.selectedSegmentIndex]
        let billamount=NSString(string: bill.text!).doubleValue
        let tip=billamount*tipper
        let total=billamount+tip
        tiplabel.text="$\(tip)"
        totallabel.text="$\(total)"
        tiplabel.text = String(format: "$%.2f",tip)
        totallabel.text = String(format: "$%.2f",total)
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        
    }
    @IBOutlet var onTap: UITapGestureRecognizer!
}

