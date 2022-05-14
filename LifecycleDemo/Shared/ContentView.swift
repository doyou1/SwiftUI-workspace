//
//  ContentView.swift
//  Shared
//
//  Created by AIS on 2022/05/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TabView {
                FirstTabView()
                    .tabItem {
                        Image(systemName: "01.circle")
                        Text("First")
                    }
                SecondTabView()
                    .tabItem {
                        Image(systemName: "02.circle")
                        Text("Second")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
