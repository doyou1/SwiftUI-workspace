//
//  DocDemoApp.swift
//  Shared
//
//  Created by AIS on 2022/05/17.
//

import SwiftUI

@main
struct DocDemoApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: DocDemoDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
