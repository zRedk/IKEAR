//
//  ContentView.swift
//  IKEA_NC1
//
//  Created by Federica Mosca on 22/11/23.
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
                
                Carousel()
                
                SegmentedControl(cards: cards)
            } .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {}, label: {
                        Image(systemName: "person")
                            .accessibilityAddTraits([.isButton])
                            .foregroundStyle(.black)
                            .bold()
                            .accessibilityLabel("Profile")
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
            Text("Shop")
                .tabItem {
                    Image(systemName: "bag")
                }
            Text("Favourites")
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
