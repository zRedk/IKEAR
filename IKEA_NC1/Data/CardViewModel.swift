//
//  CardViewModel.swift
//  IKEA_NC1
//
//  Created by Federica Mosca on 23/11/23.
//

import Foundation
import Observation
import SwiftUI

class CardsViewModel{
    let cards: [Card] = [
        
        Card(imageName:["chairFront","chairSide","chairBack"], title: "Amazing Chair", price: 49.0, description: "Perfect for watching old TV Shows", objectName: "chair", size: "22 x 22 x 22", color: "red"),
        Card(imageName: ["vaseFront","vaseSide","vaseBack"], title: "Cute Vase", price: 10.0, description: "Ideal to keep your flower alive", objectName: "vase", size: "33 x 33 x 33", color:"orange"),
        Card(imageName: ["tvFront","tvSide","tvBack"], title: "Formidable TV", price: 800.0, description: "TV description", objectName: "tv", size: "44 x 44 x 44", color: "brown"),
        Card(imageName: ["guitarFront","guitarSide","guitarBack"], title: "Perfect Guitar", price: 100.0, description: "For amazing artists", objectName: "guitar", size: "11 x 11 x 11", color: "brown")
        
    ]
}

