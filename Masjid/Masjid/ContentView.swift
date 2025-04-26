//
//  ContentView.swift
//  Masjid
//
//  Created by Usman Hasan on 4/12/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    VStack {
                        Label("Home", image:"ICOB-logo")
                    }
                }
            PrayerView()
                .tabItem {
                    Label("Prayer Times", systemImage: "clock.circle.fill")
                }
            DonationView()
                .tabItem {
                    Label("Donate", systemImage: "wallet.bifold.fill")
                }
            
            Text("Announcements View")
                .tabItem {
                    Label("Announcements", systemImage: "message.badge.fill")
                }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
