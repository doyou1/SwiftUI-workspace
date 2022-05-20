//
//  ImageDocDemoApp.swift
//  Shared
//
//  Created by AIS on 2022/05/18.
//

import SwiftUI

@main
struct ImageDocDemoApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: ImageDocDemoDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
