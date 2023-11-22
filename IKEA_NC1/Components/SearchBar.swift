//
//  SearchBar.swift
//  IKEA_NC1
//
//  Created by sara hu lihua on 22/11/23.
//


import SwiftUI

struct SearchBar: View {
    
    @State private var searchText = ""
    
    var body: some View {
        HStack {
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                        .padding(.leading, 20)
                        
                    
                    TextField("What are you looking for?", text: $searchText)
                        .foregroundColor(.secondary )
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(20)
                }
                .overlay(Capsule().stroke(Color.black, lineWidth: 1))
            }
        }
    }


#Preview {
    SearchBar()
        .previewLayout(.sizeThatFits)
        .padding()
}
