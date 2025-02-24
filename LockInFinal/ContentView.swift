//
//  ContentView.swift
//  LockInFinal
//
//  Created by Danielle Abrams on 10/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Group {
                MainView()
                    .tabItem {
                        Label("Lock In!", systemImage: "stopwatch.fill")
                        
                    }
                StatisticsView()
                    .tabItem {
                        Label("Stats", systemImage: "chart.line.uptrend.xyaxis.circle.fill")
                    }
                GalleryView()
                    .tabItem {
                        Label("Gallery", systemImage: "photo.stack.fill")
                    }
            }
            .toolbarBackground(.black, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            
        }
    }
}

#Preview {
    ContentView()
}
