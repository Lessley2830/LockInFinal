//
//  BraumView.swift
//  LockInChallenger
//
//  Created by Jacob Weathersby on 10/9/24.
//

import SwiftUI

struct BraumView: View {
    @State private var downloadAmount = 9.0
    
    var body: some View {
        
        ZStack {
            Color.night
                .ignoresSafeArea()
            
            VStack {
                
                Image(.braum)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.cerulean)
                    .scaledToFit()
                    .frame(maxHeight: 400)
                
                VStack {
                    VStack (alignment: .leading){
                        Text("Braum")
                            .foregroundStyle(.offWhite)
                        
                        CharProgressBar(barwidth: 360, barheight: 20, percent: 80)
                    }
                    Text("\"The heart is the strongest muscle!\"")
                        .foregroundStyle(.accent)
                        .bold()
                        .fontWidth(.condensed)
                        .font(.largeTitle)
                    
                        .padding()
                    
                    Text("Lock in for over an hour!")
                        .foregroundStyle(.accent)
                        .font(.title2)
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    BraumView()
}
