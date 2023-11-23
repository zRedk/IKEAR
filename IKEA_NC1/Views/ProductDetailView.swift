//
//  ProductDetailView.swift
//  IKEA_NC1
//
//  Created by Federica Mosca on 22/11/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    @Environment(BackgroundLogic.self) private var backgroundLogic
    @Environment(\.dismiss) private var isPresented
    @State private var arIsPresented = false
    @State private var arPresented = true
    
    let screenSize = UIScreen.main.bounds

    var card: Card
    
    func formatCurrency(value: Double) -> String {
                let formatter = NumberFormatter()
                formatter.numberStyle = .currency
                formatter.locale = Locale.current

                return formatter.string(from: NSNumber(value: value)) ?? ""
            }
    
    var body: some View {
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        let imageWidth = screenWidth * 0.9
        let imageHeight = screenHeight / 2
        
        ScrollView{
            VStack{
                ScrollView(.horizontal){
                    HStack {
                        ForEach(card.imageName, id: \.self){ img in
                            Image(img)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                                .frame(width: imageWidth, height: imageHeight)
                        }
                    }
                    .padding(10)
                }
                
                HStack{
                    
                    
                    Button(action: {
                        arIsPresented = true
                        backgroundLogic.arViewPresented = arIsPresented
                    }, label: {
                        
                        HStack{
                            Image(systemName: "arrow.clockwise")
                            Text("View in 3D")
                                .bold()
                                .font(.system(size: 13))
                        }
                    }).tint(.black)
                    .padding()
                    .background(Capsule().fill(Color.white))
                    .overlay(
                        Capsule()
                            .stroke(Color.black, lineWidth: 1)
                            .frame(height: 40)
                    )
                    
                    Spacer()
                    
                    
                    Button(action: {
                        arIsPresented = true
                        backgroundLogic.arViewPresented = arIsPresented
                    }, label: {
                        HStack{
                            Image(systemName: "cube.transparent")
                            Text("View in room")
                                .bold()
                                .font(.system(size: 13))
            
                        }
                    }).tint(.black)
                    .padding()
                    .background(Capsule().fill(Color.white))
                    .overlay(
                        Capsule()
                            .stroke(Color.black, lineWidth: 1)
                            .frame(height: 40)
                    )
                    .fullScreenCover(isPresented: $arIsPresented, content: {
                        
                        ProductARView(card: card)
                        
                            .onAppear(perform: {
                                backgroundLogic.arPresented = true
                            })
                            .overlay(alignment: .top) {
                                CustomTopBar()
                                    .padding(.horizontal)
                            }
                    })
                    .statusBarHidden()



                    
                } //: HSTACK
                .padding(.horizontal,15)
                
                VStack(alignment: .leading, content: {
                    Text(card.title)
                        .font(.headline)
                    Text(card.description + ", " + card.color + ", " + card.size)
                        .lineLimit(nil)
                        .padding(.bottom,2)
                    Text(formatCurrency(value: card.price))
                        .font(.title).bold()
                    }
                )
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .padding(.bottom, 25)
                
                
                
                ZStack {
                    Capsule()
                        .fill(Color("ColorScanner"))
                    .frame(width: 320, height: 60)
                    
                    Text("Aggiungi al carrello")
                        .foregroundColor(.white)
                        .bold()
                        .multilineTextAlignment(.center)
                }
                
            } //: VSTACK
            .padding(.horizontal)
            
        }
    }
}

#Preview {
    ProductDetailView(card: Card(imageName: ["chairFront","chairSide","chairBack"], title: "Placeholder", price: 49, description: "Placeholder", objectName: "chair_swan", size: "22 x 22 x 22", color: "red"))
        .environment(BackgroundLogic())
}
