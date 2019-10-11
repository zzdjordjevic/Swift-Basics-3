//
//  ViewController.swift
//  LoggingApp
//
//  Created by Zorana Djordjevic on 8/27/19.
//  Copyright © 2019 Zorana Djordjevic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emailAdress: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var singInButton: UIButton!
    
    private func displayAlert(with message: String) {
        let alert = UIAlertController(title: message, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction.init(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Navigation
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "performLoginSegue" {
            guard let userNameText = emailAdress.text, !userNameText.isEmpty else {
                displayAlert(with: "You didn't enter your User Name")
                return false
            }
            guard let userPassword = password.text, !userPassword.isEmpty else {
                displayAlert(with: "You didn't enter Password")
                return false
            }
            return true

        }
        return true
    }
    
    
    
    
}

