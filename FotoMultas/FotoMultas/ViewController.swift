//
//  ViewController.swift
//  FotoMultas
//
//  Created by S209e19 on 19/08/16.
//  Copyright © 2016 UdeM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    @IBOutlet weak var usernameTextField: UITextField!

    @IBOutlet weak var passwordTextField: UITextField!
    
    //MARK: - IBActions
    
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        
        if usernameTextField.text == "Juaco" && passwordTextField.text == "paquis" {
            return true;
        }else {
            let alert = UIAlertController(title: "Login", message: "Credenciales invalidas", preferredStyle: .Alert)
            let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion:nil)
        }
        
        return false;
    }


    
    
    
    
    
    
    
    
    
    
    
    
}

