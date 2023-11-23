//
//  CustomTopBar.swift
//  IKEA_NC1
//
//  Created by Federica Mosca on 23/11/23.
//

import SwiftUI

struct CustomTopBar: View {
    
    //Checks if the Scene is in the background or active
    @Environment(\.scenePhase) private var scenePhase
    @Environment(BackgroundLogic.self) var selected
    @Environment(\.dismiss) private var dismiss
    
 
    
    var body: some View {
        
        HStack{

            //Dismiss button
            Button{
                
                //Dismisses the AR View including the TopBar
                dismiss.callAsFunction()
                
            }label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.primary)
                    .font(.title2)
                    .frame(width: 40, height: 30)
                    .padding(7)
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .tint(.primary)
            
            Spacer()
            
            //Custom Picker
            HStack(spacing: 1){
                
                //Left side of custom Picker (AR)
                Button{
                  
                        //Selects AR as the active mode
                        selected.arPresented = true
                    
                }label: {
                    Text("AR")
                        .font(.footnote)
                        .frame(width: 70, height: 30)
                        .padding(7)
                        .background(selected.arPresented ? .white : Color.clear)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                }
                .foregroundStyle(selected.arPresented ? .blue : .primary)
                .buttonStyle(FlatButtonStyle())
                .font(.callout)
                
                //Right side of custom Picker (Object)
                Button{
                        selected.arPresented = false
                }label: {
                    Text("Object")
                        .font(.footnote)
                        .frame(width: 55, height: 30)
                        .padding(.horizontal, 10)
                        .padding(7)
                        .background(!selected.arPresented ? Color.white : Color.clear)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                    
                }
                .buttonStyle(FlatButtonStyle())
                .foregroundStyle(!selected.arPresented ? .blue : .primary)
                .font(.callout)
                
            }
            .padding(2)
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Spacer()
            
            //Share Button
            Button{
                print("lol")
            }label: {
                    
                    Image(systemName: "square.and.arrow.up")
                    .foregroundStyle(.primary)
                    .font(.title2)
                    .frame(width: 40, height: 30)
                    .padding(7)
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            .tint(.primary)
        }
        //If you close the app and repoen it, it switches the highlighted button to object
        .onChange(of: scenePhase) {
            if scenePhase == .background{
                selected.arPresented = false
            }
        }
    }
}

#Preview {
    CustomTopBar()
        .environment(BackgroundLogic())
}

//Button Style that removes the click animation
struct FlatButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}
