//  ContentView.swift
//  Shared
//
//  Created by AIS on 2022/05/11.


import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SceneStorageView()
                .tabItem {
                    Image(systemName: "circle.fill")
                    Text("SceneStorage")
                }
            AppStorageView()
                .tabItem {
                    Image(systemName: "suqare.fill")
                    Text("AppStorage")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
