//
//  SecondTabView.swift
//  LifecycleDemo
//
//  Created by AIS on 2022/05/11.
//

import SwiftUI

struct SecondTabView: View {
    @State private var text: String = ""

    var body: some View {
        TextEditor(text: $text)
            .padding()
            .onChange(of: text, perform: {value in
                print("onChange triggered \(value)")
            })
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}
