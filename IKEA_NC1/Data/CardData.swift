//
//  CardData.swift
//  IKEA_NC1
//
//  Created by sara hu lihua on 22/11/23.
//

import Foundation
import SwiftUI

struct Card: Identifiable{
    var id = UUID()
    var imageName: [String]
    var title: String
    var price: Double
    var description: String
    var objectName: String
    var size: String
    var color: String
}
