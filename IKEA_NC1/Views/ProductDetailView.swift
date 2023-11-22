//
//  ProductDetailView.swift
//  IKEA_NC1
//
//  Created by sara hu lihua on 22/11/23.
//

import SwiftUI

struct ProductDetailView: View {
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
        let imageWidth = screenWidth * 0.83
        
        ScrollView{
            VStack{
                ScrollView(.horizontal){
                    HStack {
                        ForEach(card.imageName, id: \.self){ img in
                            Image(img) // Immagine con il nome carosello1, carosello2, ecc.
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                                .frame(width: imageWidth, height: (imageWidth * 4) / 3)
                        }
                    }
                    .padding(10)
                }
                
                HStack{
                    
                    Button(action: {
                        
                    }, label: {
                        
                        HStack{
                            Image(systemName: "arrow.clockwise")
                            Text("Watch in 3D")
                                .bold()
                        }
                        .tint(.black)
                        .padding()
                        .background(Capsule().fill(Color.white))
                        .overlay(Capsule().stroke(Color.black, lineWidth: 2))
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        HStack{
                            Image(systemName: "cube.transparent")
                            Text("Watch in AR")
                                .bold()
                            
                        }
                        .tint(.black)
                        .padding()
                        .background(Capsule().fill(Color.white))
                        .overlay(Capsule().stroke(Color.black, lineWidth: 2))
                    })
//                    .fullScreenCover(isPresented: $arIsPresented, content: {
//                        
//                        ProductARView(card: card)
//                        
//                            .onAppear(perform: {
//                                backgroundLogic.arPresented = true
//                            })
//                            .overlay(alignment: .top) {
//                                CustomTopBar()
//                                    .padding(.horizontal)
//                            }
//                    })
                    .statusBarHidden()


                    
                } //: HSTACK
                .padding(.bottom, 40)
                .padding(.horizontal,15)
                
                VStack(alignment: .leading, content: {
                    Text(card.title)
                        .font(.headline)
                    Text(card.description + ", " + card.color + "\n" + card.size)
                        .lineLimit(nil)
                    Text(formatCurrency(value: card.price))
                        .font(.title).bold()
                    }
                )
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
                
            } //: VSTACK
            .padding(.horizontal)
            
        }
    }
}

#Preview {
    ProductDetailView(card: Card(imageName: ["chairFront","chairSide","chairBack"], title: "Placeholder", price: 49, description: "Placeholder", objectName: "chair_swan", size: "22 x 22 x 22", color: "red"))
}
