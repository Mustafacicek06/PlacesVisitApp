//
//  PlaceModel.swift
//  PlacesVisitApp
//
//  Created by Mustafa Çiçek on 19.08.2022.
//

import Foundation
import UIKit
 

class PlaceModel {
    // paylasilan obje
    // kim kullanırsa kullansın bu objeyi elde edecek.
    static let sharedInstance = PlaceModel()
    
    var placeName = ""
    var placeType = ""
    var placeAtmosphere = ""
    var placeImage = UIImage()
    
    // başka hiçbir yerden initilaze işlemi yapılamayacak
    private init () {}
}
