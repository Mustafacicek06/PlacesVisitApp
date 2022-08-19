//
//  ViewController.swift
//  PlacesVisitApp
//
//  Created by Mustafa Çiçek on 19.08.2022.
//

import UIKit
import Parse

class SignUpVC: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
    }


    @IBAction func signInClicked(_ sender: Any) {
        if userNameText.text != "" && passwordText.text != "" {
                  
                  PFUser.logInWithUsername(inBackground: userNameText.text!, password: passwordText.text!) { (user, error) in
                      if error != nil {
                          self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Error")
                      } else {
                          
                          // Segue
                          self.performSegue(withIdentifier: "toPlaceVC", sender: nil)
                          
                      }
                  }
                  
              } else {
                  self.makeAlert(title: "Error", message: "Username / Password??")
              }
    
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        if userNameText.text != "" && passwordText.text != "" {
                  
                  let user = PFUser()
                  user.username = userNameText.text!
                  user.password = passwordText.text!
                  
                  user.signUpInBackground { (success, error) in
                      if error != nil {
                          self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Error!!")
                      } else {
                          self.performSegue(withIdentifier: "toPlaceVC", sender: nil)

                      }
                  }
                  
              } else {
                  self.makeAlert(title: "Error", message: "Username / Password??")
              }
    }
   
    
}

 
extension UIViewController {
    func makeAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        let actionButton = UIAlertAction(title: "Okey", style: UIAlertAction.Style.default, handler: nil)
        
        alert.addAction(actionButton)
        
        self.present(alert, animated: true, completion: nil)
        
    }
}
