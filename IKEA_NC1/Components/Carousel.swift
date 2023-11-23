//
//  Carousel.swift
//  IKEA_NC1
//
//  Created by Federica Mosca on 23/11/23.
//

import SwiftUI

struct Carousel: View {
    let screenSize = UIScreen.main.bounds
    var body: some View {
        let screenWidth = screenSize.width
        let imageWidth = screenWidth * 0.83
        let imageHeight = (imageWidth * 4) / 3
        
        ScrollView(.horizontal){
            HStack {
                ForEach(0..<4){ index in
                    Image("carosello\(index + 1)") //
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: imageWidth, height: imageHeight)
                        .shadow(radius: 3)
                        .accessibilityLabel("")
                }
            }
            .padding(10)
            
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    Carousel()
}
