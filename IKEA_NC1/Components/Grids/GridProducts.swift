//
//  GridProducts.swift
//  IKEA_NC1
//
//  Created by Federica Mosca on 23/11/23.
//

import SwiftUI

struct GridProducts: View {
    
    var cards : [Card]
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    let screenSize = UIScreen.main.bounds
    
    var body: some View {
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        let imageWidth = screenWidth * 0.45
        let imageHeight = screenHeight * 0.25
        
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(cards) { element in
                    NavigationLink(destination: ProductDetailView(card: element)){
                        Image(element.imageName[0])
                            .resizable()
                            .frame(width: imageWidth, height: imageHeight)
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 10.0))

                    }
                   // }
                }
            }
            .padding()
        }
    }
}

#Preview {
    GridProducts(cards: [Card(imageName: ["chairFront","chairSide","chairBack"], title: "Placeholder", price: 49, description: "Placeholder", objectName: "chair_swan", size: "22 x 22 x 22", color: "red"),Card(imageName: ["vaseFront","vaseSide","vaseBack"], title: "Placeholder", price: 49, description: "Placeholder", objectName: "flower_tulip", size: "22 x 22 x 22", color: "red")])
}

