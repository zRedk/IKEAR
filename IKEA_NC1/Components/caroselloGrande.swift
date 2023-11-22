//
//  caroselloGrande.swift
//  ikea_1
//
//  Created by sara hu lihua on 21/11/23.
//

import SwiftUI

struct caroselloGrande: View {
    let screenSize = UIScreen.main.bounds
    var body: some View {
        let screenWidth = screenSize.width
        let imageWidth = screenWidth * 0.83
        
        ScrollView(.horizontal){
            HStack {
                ForEach(0..<4){ index in
                    Image("carosello\(index + 1)") // Immagine con il nome carosello1, carosello2, ecc.
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: imageWidth, height: (imageWidth * 4) / 3)
                        .shadow(radius: 3)
                }
            }
            .padding(10)
            
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    caroselloGrande()
}
