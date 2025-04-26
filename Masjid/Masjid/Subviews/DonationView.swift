//
//  DonationView.swift
//  Masjid
//
//  Created by Usman Hasan on 4/13/25.
//

import SwiftUI
import SwiftData
import WebKit

struct DonationView: View {
    @State private var showWebView = true

    var body: some View {
        Color.clear
            .sheet(isPresented: $showWebView){
                SafariView(url: URL(string:"https://www.apple.com")!)
            }
    }
}
