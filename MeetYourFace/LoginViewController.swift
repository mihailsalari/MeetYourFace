//
//  ViewController.swift
//  LFLoginController
//
//  Created by Lucas Farah on 6/10/16.
//  Copyright © 2016 Lucas Farah. All rights reserved.
//
// swiftlint:disable line_length
// swiftlint:disable trailing_whitespace

import UIKit
import LFLoginController

class LoginViewController: UIViewController {
    
    let controller = LFLoginController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        controller.delegate = self
        
        // Customizations
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension LoginViewController: LFLoginControllerDelegate {
    
    func loginDidFinish(email: String, password: String, type: LFLoginController.SendType) {
        
        // Implement your server call here
        
        print(email)
        print(password)
        print(type)
        
        // Example
        if type == .Login && password != "1234" {
            
            controller.wrongInfoShake()
        } else {
            
            navigationController?.popViewControllerAnimated(true)
        }
    }
    
    func forgotPasswordTapped() {
        
        print("forgot password")
    }
}
