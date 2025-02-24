//
//  ChallengesView.swift
//  LockInChallenger
//
//  Created by Jacob Weathersby on 10/8/24.
//

import SwiftUI

struct ChallengesView: View {
    var body: some View {
            ZStack {
                Color.night
                    .ignoresSafeArea()
                Group {
                    TabView {
                        CamView()
                        BraumView()
                        RellView()
                    }
                    .tabViewStyle(.page)
                    .frame(height: 700)
                    .ignoresSafeArea()
                }
        }
    }
}

#Preview {
    ChallengesView()
}
