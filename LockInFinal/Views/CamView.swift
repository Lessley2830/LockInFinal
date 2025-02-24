//
//  CamView.swift
//  LockInChallenger
//
//  Created by Jacob Weathersby on 10/9/24.
//

import SwiftUI

struct CamView: View {
    @State private var downloadAmount = 0
    
    var body: some View {
        
        ZStack {
            Color.night
                .ignoresSafeArea()
            
            VStack{
                Image("Cammy")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.cerulean)
                    .scaledToFit()
                    .frame(maxHeight: 400)
                   
            
                VStack (alignment: .leading){
                    Text("Camille")
                        .foregroundStyle(.offWhite)
                    
                    
                    CharProgressBar(barwidth: 360, barheight: 20, percent: 5)
                }
                VStack{
                    Text("\"Regret is the steel that tempers our souls.\"")
                        .foregroundStyle(.accent)
                        .bold()
                        .fontWidth(.condensed)
                        .font(.largeTitle)
                    
                        .padding()
                    
                    Text("Lock in everyday for 1 month!")
                        .foregroundStyle(.accent)
                        .font(.title2)
                }
                }
            }
        .ignoresSafeArea()
        }
    }


#Preview {
    CamView()
}
