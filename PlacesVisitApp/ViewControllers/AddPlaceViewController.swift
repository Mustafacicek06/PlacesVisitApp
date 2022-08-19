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

        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(chooseImage))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    @objc func chooseImage() {
        let picker = UIImagePickerController()
        // adding UIImagePickerControllerDelegate
        picker.delegate = self
        
        picker.sourceType = .photoLibrary
        
        self.present(picker, animated: true, completion: nil)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true)
    }
    

    @IBAction func nextButtonClicked(_ sender: Any) {
        if placeNameText.text != "" && placeType.text != "" && placeAtmosphere.text != "" {
            if let choosenImage = imageView.image {
                let placeModel = PlaceModel.sharedInstance
                
                placeModel.placeName = placeNameText.text ?? ""
                placeModel.placeType = placeType.text ?? ""
                placeModel.placeAtmosphere = placeAtmosphere.text ?? ""
                placeModel.placeImage = choosenImage
            }
            
            self.performSegue(withIdentifier: "toMapVC", sender: nil)
       
        } else {
            makeAlert(title: "Error", message: "Place NAME/TYPE/ATMOSPHERE ??")
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

extension AddPlaceViewController : UIImagePickerControllerDelegate , UINavigationControllerDelegate {
    
}
