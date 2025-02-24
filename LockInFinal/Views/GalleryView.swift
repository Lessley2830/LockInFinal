//
//  ContentView.swift
//  Gallery Screen
//
//  Created by Lessly C. Romero-Rodriguez on 10/9/24.
//

import SwiftUI

struct GalleryView: View {
    @State private var camSheetUp: Bool = false
    @State private var rellSheetUp: Bool = false
    @State private var braumSheetUp: Bool = false
    
    
    var body: some View {
        ZStack {
            Color.night
                .ignoresSafeArea()
            
            VStack (alignment: .center) {
                ZStack {
                    Color.cerulean
                        .ignoresSafeArea()
                        .opacity(0.4)
                    Text("Gallery")
                        .font(.title)
                        .fontWidth(.condensed)
                        .fontWeight(.bold)
                        .foregroundStyle(.accent)
                }
                .frame( height: 100)
                
                VStack {
                    HStack(spacing: 10){
                        VStack{
                            Image("RellFull")
                                .resizable()
                                .scaledToFit()
                                .padding(.all, 32)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .stroke(.cerulean, style:StrokeStyle(lineWidth:15)))
                                .aspectRatio(1, contentMode: .fit)
                                .frame(maxWidth: 200, maxHeight: 200)
                                .onTapGesture {
                                    rellSheetUp = true
                                }
                            
                            Text("Rell")
                                .foregroundStyle(.accent)
                                .font(.system(size: 19))
                        }
                        .sheet(isPresented: $rellSheetUp) {
                            RellView()
                        }
                        // .interactiveDismissDisabled()
                        
                        VStack{
                            Image("Cammy")
                                .resizable()
                                .renderingMode(.template)
                                .foregroundStyle(.cerulean)
                                .scaledToFit()
                                .padding(.all, 32)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .stroke(.cerulean, style:StrokeStyle(lineWidth:15)))
                                .aspectRatio(1, contentMode: .fit)
                                .frame(maxWidth: 200, maxHeight: 200)
                                .onTapGesture {
                                    camSheetUp = true
                                }
                            
                            Text("Camille")
                                .foregroundStyle(.accent)
                                .font(.system(size: 19))
                        }
                        .sheet(isPresented: $camSheetUp) {
                            CamView()
                        }
                    }
                    
                    Image("Braum")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(.cerulean)
                        .scaledToFit()
                        .padding(.all,32)
                        .clipShape(Circle())
                    
                        .overlay(
                            Circle()
                                .stroke(.cerulean, style:StrokeStyle(lineWidth:15)))
                        .frame(maxWidth: 180, maxHeight: 180)
                        .onTapGesture {
                            braumSheetUp = true
                        }
                    
                    Text("Braum")
                        .foregroundStyle(.accent)
                        .font(.system(size: 19))
                }
                .sheet(isPresented: $braumSheetUp) {
                    BraumView()
                }
                .padding()
                Spacer()
            }
        }
        
    }
    
}



#Preview {
    GalleryView()
}

