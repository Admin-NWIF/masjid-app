//
//  PrayerView.swift
//  Masjid
//
//  Created by Usman Hasan on 4/12/25.
//

import SwiftUI
import SwiftData

private var prayers = [
    Prayer(prayerName: "Fajr", prayerTime: "0.0"),
    Prayer(prayerName: "Dhuhr", prayerTime: "1.0"),
    Prayer(prayerName: "Asr", prayerTime: "2.0"),
    Prayer(prayerName: "Maghrib", prayerTime: "3.0"),
    Prayer(prayerName: "Isha", prayerTime: "4.0")
]

struct PrayerView: View {
    var body: some View {
        Table(prayers) {
            TableColumn("Prayer", value: \.prayerName)
            TableColumn("Time", value: \.prayerTime)
        }
    }
}

struct Prayer: Identifiable {
    let prayerName: String
    let prayerTime: String
    let id = UUID()
}
