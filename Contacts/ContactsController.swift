//
//  FirstViewController.swift
//  Contacts
//
//  Created by Miller, Benjamin A. on 5/11/16.
//  Copyright © 2016 Miller, Benjamin A. All rights reserved.
//

import UIKit

class ContactsController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var sgmtEditMode: UISegmentedControl!
    @IBOutlet weak var contact: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var cell: UITextField!
    @IBOutlet weak var home: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var zip: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var changedate: UIButton!
    
    @IBAction func sgmtSwitch(sender: AnyObject) {
        //ask switch if its edit or view//
        let segment = sender as! UISegmentedControl
        
        if (segment.titleForSegmentAtIndex(segment.selectedSegmentIndex) == "View"){
            contact.enabled = false;
        }
        
    }
    
    func onoff(passed: Bool){
        
    }
    
}

