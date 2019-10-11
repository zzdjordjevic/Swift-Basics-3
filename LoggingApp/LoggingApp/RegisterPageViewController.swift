//
//  RegisterPageViewController.swift
//  LoggingApp
//
//  Created by Zorana Djordjevic on 10/1/19.
//  Copyright © 2019 Zorana Djordjevic. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userNameRegistration: UITextField!
    @IBOutlet weak var passwordRegistration: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var singUpRegistration: UIButton!
    
    private func displayAlert(with message: String) {
        let alert = UIAlertController(title: message, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction.init(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "performLoginSegue" {
            guard let userNameText = userNameRegistration.text, !userNameText.isEmpty else {
                displayAlert(with: "You didn't enter your User Name")
                return false
            }
            guard let userPassword = passwordRegistration.text, !userPassword.isEmpty else {
                displayAlert(with: "You didn't enter Password")
                return false
            }
            return true
            
        }
        return true
    }
    
    //    @IBAction func registerButtonTapped(_ sender: Any) {
//        
//        let userName = userNameRegistration.text
//        let password = passwordRegistration.text
//        
//        //Check empty fields
//        if (userName!.isEmpty || password!.isEmpty) {
//            //Display message
//            display(userMessage: "All fields are required")
//           
//            return
//        }
//
//        
//    }
//    func display(userMessage: String) {
//        var myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)
//        
//        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//        
//        myAlert.addAction(okAction)
//        
//        self.present(myAlert, animated: true, completion: nil)
//    }
    
    
    
    // MARK: - Navigation


}
