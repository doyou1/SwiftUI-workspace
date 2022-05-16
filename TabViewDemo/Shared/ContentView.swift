//
//  ContentView.swift
//  Shared
//
//  Created by AIS on 2022/05/15.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1

    var body: some View {
        TabView(selection: $selection) {
            Text("First Content View \(selection)")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Screen One")
            }.tag(1)
            Text("Second Content View \(selection)")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Screen Two")
            }.tag(2)
            Text("Third Content View \(selection)")
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Screen Three")
            }.tag(3)
        }
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
