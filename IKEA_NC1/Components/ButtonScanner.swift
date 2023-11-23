//
//  ButtonScanner.swift
//  IKEA_NC1
//
//  Created by Federica Mosca on 23/11/23.
//

import SwiftUI

struct ButtonScanner: View {
    var body: some View {
        
        Button{
            
        } label: {
            Image(systemName: "barcode.viewfinder")
                .foregroundColor(.white)
                .background(
                    Circle()
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                )
                .font(.system(size: 25))
        }
    }
}
#Preview {
    ButtonScanner()
}
