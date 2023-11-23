//
//  ProductARView.swift
//  IKEA_NC1
//
//  Created by Federica Mosca on 23/11/23.
//

import SwiftUI
import RealityKit

struct ProductARView: View {
    
    @Environment(BackgroundLogic.self) private var bgLogic
    var card: Card
    
    var body: some View {
           
        //decides which Mode to show. AR or Object based on bgLogic.arPresented
        if bgLogic.arPresented{
            
            //Displays AR View because .ignoresSafeArea()
            ARQuickLookView(card: card)
                    .ignoresSafeArea()
                    
            } else {
                
                //Displays Object View because NOT .ignoresSafeArea()
                ARQuickLookView(card: card)
                    }
        
        }
    }

//#Preview {
//    ProductARView()
//}
