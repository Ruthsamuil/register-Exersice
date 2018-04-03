//
//  registrationVCViewController.swift
//  register
//
//  Created by ruth samuil on 3/19/18.
//  Copyright © 2018 ruth samuil. All rights reserved.
//

import UIKit

class registrationVCViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var passwordtextbox: UITextField!
    
    @IBOutlet weak var emailtextbox: UITextField!
    
    @IBOutlet weak var firstNametextbox: UITextField!
    
    @IBOutlet weak var secondNametextbox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    
    @IBAction func registerbuttom(_ sender: UIButton) {
        
        
        if ((firstNametextbox.text?.isEmpty)!) && ((secondNametextbox.text?.isEmpty)!) && ((emailtextbox.text?.isEmpty)!) && ((passwordtextbox.text?.isEmpty)!){
            // registerBtnOutlet.isEnabled = false
            message.text = "Please fill all required fields"
        }else{
            message.text = "You are registered"
            performSegue(withIdentifier: "login", sender: self)
        }
        
    }
    
}

