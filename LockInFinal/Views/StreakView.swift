//
//  StreakView.swift
//  LockInStats
//
//  Created by Marshall Tolbert on 10/10/24.
//

import SwiftUI

struct StreakView: View {
    var body: some View {
        ZStack {
            Color.night
                .ignoresSafeArea()
            VStack {
                VStack {
                    ZStack {
                        Image("LockImage")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                            .rotationEffect(.degrees(30))
                            .offset(x: -3)
                        
                        Text ("4")
                            .font(.system(size: 90))
                            .offset(y: 50)
                            .shadow(color: .black, radius: 4)
                    }
                    .padding()
                    
                    Text ("Day Streak!")
                        .font(.largeTitle)
                        .bold()
                        .offset(y: -11)
                }
                .padding()
                
                //Days of the week
                
                VStack {
                    HStack{
                        VStack {
                            Text ("Sun")
                                .bold()
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.green)
                        }
                        
                        VStack{
                            Text ("Mon")
                                .bold()
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.green)
                        }
                        
                        VStack {
                            Text ("Tue")
                                .bold()
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.green)
                        }
                        
                        VStack {
                            Text ("Wed")
                                .bold()
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.green)
                        }
                    }
                    .padding(.bottom, 10)
                    HStack{
                        VStack {
                            Text ("Thu")
                                .bold()
                            Image(systemName: "checkmark.seal.fill")
                                
                        }
                        
                        VStack {
                            Text ("Fri")
                                .bold()
                            Image(systemName: "checkmark.seal.fill")
                                
                        }
                        VStack {
                            Text ("Sat")
                                .bold()
                            Image(systemName: "checkmark.seal.fill")
                        }
                    }
                    .padding(.bottom, 10)
                    
                    Divider()
                        .overlay(.teal)
                        .frame(width: 250)
                    
                    Text("Your longest Lock In! Streak is")
                    
                    Text("4 Days!")
                        .font(.title)
                        .bold()

                }
                .frame(minWidth: 300)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(.cerulean, lineWidth: 4)
                )
            }
            .foregroundStyle(.white)
        }
        
    }
}

#Preview {
    StreakView()
}
