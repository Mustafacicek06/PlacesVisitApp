//
//  PlacesViewController.swift
//  PlacesVisitApp
//
//  Created by Mustafa Çiçek on 19.08.2022.
//

import UIKit
import Parse

class PlacesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItem.Style.plain, target: self, action: #selector(logoutButtonClicked))
    
    }
    @objc func addButtonClicked() {
        // segue
        
    }
    @objc func logoutButtonClicked(){
        PFUser.logOutInBackground { (error) in
            if error != nil {
                self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Error" )
            }
            else {
                self.performSegue(withIdentifier: "toSignUpVc", sender: nil)
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
