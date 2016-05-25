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
        onoff(false)
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
            onoff(false);
        }
        else{
            onoff(true);
        }
        
        
    }
    
    func onoff(passed: Bool){
        if(passed == false){
            contact.enabled = false;
            address.enabled = false;
            cell.enabled = false;
            home.enabled = false;
            city.enabled = false;
            state.enabled = false;
            zip.enabled = false;
            email.enabled = false;
            changedate.hidden =  true;
        }
        if(passed == true){
            contact.enabled = true;
            address.enabled = true;
            cell.enabled = true;
            home.enabled = true;
            city.enabled = true;
            state.enabled = true;
            zip.enabled = true;
            email.enabled = true;
            changedate.hidden =  false;
        }
        
    }
    
}

