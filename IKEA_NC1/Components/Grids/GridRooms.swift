//
//  GridRooms.swift
//  IKEA_NC1
//
//  Created by sara hu lihua on 22/11/23.
//

import SwiftUI

struct GridRooms: View {
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(0..<4) { index in
                    Button(action:{}, label: {
                        Image("room\(index+1)")
                            .resizable()
                            .frame(width: 175, height: 270)
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
