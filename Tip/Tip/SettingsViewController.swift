//
//  SettingsViewController.swift
//  Tip
//
//  Created by rraghwen on 12/15/15.
//  Copyright (c) 2015 Raghwendra. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var tipcontrol: UISegmentedControl!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let percent = defaults.integerForKey("tip_percent")
        tipcontrol.selectedSegmentIndex = percent
    }
    
    @IBAction func defaulttip(sender: AnyObject) {
        //var tippercents=[0.18, 0.2, 0.22]
        //let tipper=tippercents[tipcontrol.selectedSegmentIndex]
        let defaults = NSUserDefaults.standardUserDefaults()
        //defaults.setDouble(tipper, forKey: "tipcontrol")
        let index = tipcontrol.selectedSegmentIndex
        defaults.setInteger(index, forKey: "tip_percent")

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
