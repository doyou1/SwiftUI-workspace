//
//  FirstTabView.swift
//  LifecycleDemo
//
//  Created by AIS on 2022/05/11.
//

import SwiftUI

struct FirstTabView: View {
    var body: some View {
        Text("View One")
            .onAppear(perform: {
                print("onAppear triggered")
            })
            .onDisappear(perform: {
                print("onDisappeared triggered")
            })
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
