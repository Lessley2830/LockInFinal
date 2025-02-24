//
//  StatsWeeklyView.swift
//  LockInStats
//
//  Created by Danielle Abrams on 10/7/24.
//

import SwiftUI

struct StatsWeeklyView: View {
    @State private var selectedStats: StatPage = .weekly
    @State private var longestTime = 50
    @State private var newTime = 120
    
  /*  let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    func UISegmentedControl.appearance().setTitleTextAttributes(titleTextAttributes, forState: .Selected) */
    
    var body: some View {
        ZStack{
            Color(.night)
                .ignoresSafeArea()
            // the segmented picker
            VStack {
//                ZStack{
//                    Color.cerulean
//                        .ignoresSafeArea()
//                    Text("Statistics")
//                        .foregroundStyle(.accent)
//                        .font(.title)
//                        .fontWidth(.condensed)
//                        .bold()
//                 
//                }
//                .frame(height: 100)
                
//                VStack{
//                    Picker("Stats", selection: $selectedStats) {
//                        ForEach(StatPage.allCases) { page in
//                           Text(page.rawValue.capitalized)
//                        }
//                        .accentColor(.white)
//                    }
//                    .pickerStyle(.segmented)
//                    .colorMultiply(.chartGray)
//                    .background(.segGray)
//                    .padding()
                    
                    
                    
       //         }
               
               
              
              
              
                
                VStack{
                    ZStack {
//                        RoundedRectangle(cornerRadius: 30)
//                            .foregroundStyle(.segGray)
                            
                      BarChart()
                            .frame(width: 300, height: 300)
                    }
                    VStack (alignment: .leading, spacing: 30) {
                        Text("Weekly Progress")
                            .font(.system(size: 36))
                        
//                        Text("This measures how many minutes you've locked in every day this week")
                        Group {
                            Text("Your longest lock-in time this week was \(longestTime) minutes!")
                            
                            Text("Let's shoot for \(newTime) minutes next.")
                        }
                        .font(.system(size: 24))
                       
                    }
                    .padding(.horizontal, 15)
                }
                .foregroundStyle(.white)
                Spacer()
            }
        }
    }
    
}

#Preview {
    StatsWeeklyView()
}

//enum StatPage: String, CaseIterable, Identifiable {
//    case weekly, streak, challenges
//    var id: Self { self }
//    
//}

//extension StatPage {
//    var selectedStats: StatPage {
//        switch self {
//        case .weekly: return .weekly
//        case .streak: return .streak
//        case .challenges: return .challenges
//        }
//    }
//}
