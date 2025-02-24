//
//  StatisticsView.swift
//  LockInStats
//
//  Created by Danielle Abrams on 10/9/24.
//

import SwiftUI

struct StatisticsView: View {
    @State private var selectedStat: StatPage = .weekly
  //  @State private var innerPge: Int = 0
    
    var body: some View {
     
            ZStack{
                Color(.night)
                    .ignoresSafeArea()
                    VStack {
                        ZStack{
                            Color.cerulean
                                .ignoresSafeArea()
                                .opacity(0.4)
                            Text("Statistics")
                                .foregroundStyle(.accent)
                                .font(.title)
                                .fontWidth(.condensed)
                                .bold()
                        }
                        .frame(height: 100)
                        
                        ScrollView {
                            // the segmented picker
                            VStack{
                                Picker("Stats", selection: $selectedStat) {
                                    ForEach(StatPage.allCases) { page in
                                        Text(page.rawValue.capitalized)
                                    }
                                    .accentColor(.white)
                                }
                                .pickerStyle(.segmented)
                                .colorScheme(.dark)
                                .colorMultiply(.chartGray)
                                .background(.segGray)
                                .padding()
                            }
                                if (selectedStat == .weekly) {
                                    StatsWeeklyView()
                                } else if (selectedStat == .streak) {
                                    StreakView()
                                } else if (selectedStat == .challenges) {
                                    ChallengesView()
                                }
                            
                        }
                }
            }
    }
}

#Preview {
    StatisticsView()
}

enum StatPage: String, CaseIterable, Identifiable, Hashable {
    case weekly, streak, challenges
    var id: Self { self }
    
}


