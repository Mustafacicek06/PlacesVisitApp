//
//  AddPlaceViewController.swift
//  PlacesVisitApp
//
//  Created by Mustafa Çiçek on 19.08.2022.
//

import UIKit

class AddPlaceViewController: UIViewController {

    @IBOutlet weak var placeNameText: UITextField!
    
    @IBOutlet weak var placeType: UITextField!
    
    @IBOutlet weak var placeAtmosphere: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextButtonClicked(_ sender: Any) {
        
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
