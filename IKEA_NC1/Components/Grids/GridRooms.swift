//
//  GridRooms.swift
//  IKEA_NC1
//
//  Created by Federica Mosca on 23/11/23.
//

import SwiftUI

struct GridRooms: View {
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    let screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        let imageWidth = screenWidth * 0.45
        let imageHeight = screenHeight * 0.25
        
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(0..<4) { index in
                    Button(action:{}, label: {
                        Image("room\(index+1)")
                            .resizable()
                            .frame(width: imageWidth ,height: imageHeight)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    )
                }
            }
            .padding()
        }
    }
}

#Preview {
    GridRooms()
}
