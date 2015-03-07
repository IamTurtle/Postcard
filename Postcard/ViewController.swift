//
//  ViewController.swift
//  Postcard
//
//  Created by Thomas Gouvrion on 04/03/2015.
//  Copyright (c) 2015 Thomas Gouvrion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //messageLabel action
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.text = ""
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        enterMessageTextField.resignFirstResponder()
        
        //nameLabel action
        
        nameLabel.hidden = false
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        
        
    }

}

