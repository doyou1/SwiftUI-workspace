//
//  ContentView.swift
//  Shared
//
//  Created by AIS on 2022/05/17.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: DocDemoDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(DocDemoDocument()))
    }
}
