//
//  RellView.swift
//  LockInChallenger
//
//  Created by Jacob Weathersby on 10/9/24.
//

import SwiftUI

struct RellView: View {
    
    @State private var downloadAmount = 9.0
    
    var body: some View {
        
        ZStack {
            Color.night
                .ignoresSafeArea()
            
            VStack {
                Image("RellFull")
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 400)
                
                VStack {
                    VStack(alignment: .leading) {
                        Text("Rell")
                            .foregroundStyle(.offWhite)
                            .font(.title3)
                        
                        
                        CharProgressBar(barwidth: 360, barheight: 20, percent: 100)
                    }
                    Text("\"Run'em all down! We're good, they're bad, and that's all you need to know!\"")
                        .foregroundStyle(.accent)
                        .bold()
                        .fontWidth(.condensed)
                        .font(.largeTitle)
                    
                        .padding()
                    
                    Text("This is your starting character!")
                        .foregroundStyle(.accent)
                        .font(.title2)
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    RellView()
}
