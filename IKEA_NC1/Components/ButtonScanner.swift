//
//  ButtonScanner.swift
//  ikea_1
//
//  Created by sara hu lihua on 18/11/23.
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
