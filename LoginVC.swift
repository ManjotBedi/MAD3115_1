//
//  LoginVC.swift
//  mmmm
//
//  Created by MacStudent on 2018-08-07.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    
    @IBAction func btnSignIn(_ sender: UIButton) {
        if validateUser(){
            
            let mainSB : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let homeVC = mainSB.instantiateViewController(withIdentifier: "HomeScene")
          //  self.present(homeVC, animated: true, completion: nil)
            navigationController?.pushViewController(homeVC, animated: true)
            
        }else {
            let infoAlert = UIAlertController(title: "Invalid User", message: "Incorrect Input", preferredStyle: .alert)
            infoAlert.addAction(UIAlertAction(title: "Retry", style: .default, handler: nil))
            self.present(infoAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnSignUp(_ sender: UIButton) {
        let mainSB : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let SignUpVC = mainSB.instantiateViewController(withIdentifier: "SignUpScene")
        //  self.present(homeVC, animated: true, completion: nil)
        navigationController?.pushViewController(SignUpVC, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func validateUser() -> Bool {
        if txtEmail.text == "test" && txtPassword.text == "test"
        {
            return true
        }
        else {
            return false
        }
    }

}
