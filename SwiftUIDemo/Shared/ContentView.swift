//
//  ContentView.swift
//  Shared
//
//  Created by AIS on 2022/05/10.
//

import SwiftUI

struct ContentView: View {
    var colors: [Color] = [.black, .red, .green, .blue]
    var colornames = ["Black", "Red", "Green", "Blue"]

    @State private var colorIndex = 0
    @State private var rotation: Double = 0
    @State private var text: String = "Welcome to SwiftUI"

    var body: some View {
        VStack {
            VStack {
                VStack {
                    Spacer()
                    Text(text)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .rotationEffect(.degrees(rotation))
                        .animation(.easeInOut(duration: 5))
                        .foregroundColor(colors[colorIndex])
                    Spacer()
                    Divider()
                    Slider(value: $rotation, in: 0 ... 360, step: 0.1)
                        .padding()
                    TextField("Enter text here", text: $text)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    Picker(selection: $colorIndex, label: Text("Color")) {
                        ForEach(0 ..< colornames.count) { color in
                            Text(colornames[color])
                                .foregroundColor(colors[color])
                        }
                    }.pickerStyle(.wheel)
                    .padding()
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
