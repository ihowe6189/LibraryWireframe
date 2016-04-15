//
//  ViewController.swift
//  LibraryWireframe
//
//  Created by Ian Howe on 2/5/16.
//  Copyright © 2016 Ian Howe. All rights reserved.
//

import UIKit

class LoginController: UIViewController{

    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.layer.shadowOpacity = 0.5
    }

    var username = ""
    var password = ""
    
    @IBAction func textFieldChanged(sender: UITextField) {
        if sender.text != nil {
            if sender.tag == 0 {
                username = sender.text!
            }
            else {
                password = sender.text!
            }
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginToWebView" {
            let webViewController = segue.destinationViewController as! WebViewController
            webViewController.username = username
            webViewController.password = password
        }
    }
    
    
}

