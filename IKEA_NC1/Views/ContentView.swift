//
//  ContentView.swift
//  IKEA_NC1
//
//  Created by sara hu lihua on 22/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var cards: [Card] = CardsViewModel().cards
    
    var body: some View {

        NavigationStack{
            ScrollView{
                HStack(spacing: 20){
                    SearchBar()
                    ButtonScanner()
                }.padding()
                
                caroselloGrande()
                
                SegmentedControl(cards: cards)
            } .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {}, label: {
                        Image(systemName: "person")
                            .foregroundStyle(.black)
                            .bold()
                        }
                    )
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {}, label: {
                        Image(systemName: "bell")
                            .foregroundStyle(.black)
                            .bold()
                        }
                    )
                }
            }
            
            
        }
        
    }
}



struct TabBar: View {
    
    var body: some View {
        TabView{
            Text("Home")
                .tabItem {
                    Image(systemName: "house")
                    
                }
            
            ContentView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    
                }
            
            Text("Negozio")
                .tabItem {
                    Image(systemName: "house")
                    
                }
            
            Text("Preferiti")
                .tabItem {
                    Image(systemName: "heart")
                    
                }
            
            Text("Cart")
                .tabItem {
                    Image(systemName: "cart")
                    
                }
        }.accentColor(.black)
        .background(Color.white) 
    }
}


#Preview {
    TabBar()
}
