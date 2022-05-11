//
//  ContentView.swift
//  Shared
//
//  Created by AIS on 2022/05/08.
//

import SwiftUI
//import Foundation
//import Combine

class SpeedSetting: ObservableObject {
    @Published var speed = 0.0
}

struct SpeedControlView: View {
    @EnvironmentObject var speedsetting: SpeedSetting

    var body: some View {
        Slider(value: $speedsetting.speed, in: 0...100)
    }
}

struct SpeedDisplayView: View {
    @EnvironmentObject var speedsetting: SpeedSetting

    var body: some View {
        Text("Speed = \(speedsetting.speed)")
    }
}

struct ContentView: View {
    let speedsetting = SpeedSetting()

    var body: some View {
        VStack {
            SpeedControlView()
            SpeedDisplayView()
        }
        .environmentObject(speedsetting)
    }
}

//class DemoData: ObservableObject {
//    @Published var userCount = 0
//    @Published var currentUser = ""
//
//    init() {
//        // Code here to initialize data
//        updateData()
//    }
//
//    func updateData() {
//        // Code here to keep data up to date
//        self.userCount = 10
//        self.currentUser = "jh"
//    }
//}

//struct ContentView: View {

//    @ObservedObject var demoData: DemoData = DemoData()
//    @StateObject var demoData: DemoData = DemoData()

//    var body: some View {
//        Text("\(demoData.currentUser), you are user number \(demoData.userCount)")
//
//        NavigationLink(destination: SecondView(demoData)) {
//            Text("Next Screen")
//        }
//    @State private var wifiEnabled = false
//    @State private var userName = ""
//
//    var body: some View {
//        VStack {
//            Toggle(isOn: $wifiEnabled) {
//                Text("Enable Wi-Fi")
//            }
//            TextField("Enter user name", text: $userName)
//            Text(userName)
//            Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
//        }
    
//        VStack {
//            Text("Count: \(count)")
//            Button(action: {
//                count+=1
//            }) {
//                Text("Click Me")
//            }
//        }
//
//        VStack {
//            Text("Financial Results")
//                .font(.title)
//            HStack {
//                Text("Q1 Sales")
//                    .font(.headline)
//                VStack {
//                    Text("January")
//                    Text("February")
//                    Text("March")
//                }
//                VStack {
//                    Text("$1000")
//                    Text("$200")
//                    Text("$3000")
//                }
//            }
        
//        HStack(alignment: .top) {
//            Text("Q1 Sales")
//                .font(.headline)
//            Spacer()
//            VStack(alignment: .leading) {
//                Text("January")
//                Text("February")
//                Text("March")
//            }
//            Spacer()
//        }
        
//        VStack(alignment: .center, spacing: 15) {
//            Text("Financial Results")
//                .font(.title)
//            HStack(alignment: .top) {
//                Text("Q2 Sales")
//                    .font(.headline)
//                Spacer()
//                VStack(alignment: .leading) {
//                    Text("January")
//                    Text("February")
//                    Text("March")
//                }
//                Spacer()
//                VStack(alignment: .leading) {
//                    Text("$10000")
//                    Text("$200")
//                    Text("$3000")
//                }.padding(5)
//            }.padding(5)
//        }.padding(5)
        
//        VStack {
//            Group {
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//            }
//            Group {
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//            }
//        }
//        HStack {
//            Image(systemName: "airplane")
//            Text("Flight times:asdsada")
//            Text("London")
//            .layoutPriority(1)
//
//        }
//        .font(.largeTitle)
//        .lineLimit(1)
    
//        VStack {
//            Text("Hello World")
//                .font(.largeTitle)
//                .padding()
//                .border(Color.black)
//
//            Text("Hello World")
//                .font(.largeTitle)
//                .border(Color.black)
//                .padding()
//
//            Text("Hello World11")
//                .font(.largeTitle)
//                .border(Color.black)
//                .frame(width: 100, height: 100, alignment: .center)
//
//            Text("Hello World, how are you?")
//                .font(.largeTitle)
//                .frame(
//                    minWidth: 0,
//                    maxWidth: .infinity,
//                    minHeight: 0,
//                    maxHeight: .infinity
//                )
//                .border(Color.black, width: 5)
//                .edgesIgnoringSafeArea(.all)
//        }
        
//        GeometryReader { geometry in
//            VStack {
//                Text("Hello World, how are you?")
//                    .font(.largeTitle)
//                    .frame(
//                        width: geometry.size.width/2,
//                        height: (geometry.size.height/4)*3
//                    )
//                Text("Goodbye World")
//                    .font(.largeTitle)
//                    .frame(
//                        width: geometry.size.width/3,
//                        height: geometry.size.height/4
//                    )
//            }
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        HStack {
//            Image(systemName: "goforward.10")
//            Image(systemName: "goforward.15")
//            Image(systemName: "goforward.30")
//            VStack {
//                Image(systemName: "goforward.10")
//                Image(systemName: "goforward.15")
//                Image(systemName: "goforward.30")
//            }
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        MyVStack {
//            Text("Text 1")
//            Text("Text 2")
//            HStack {
//                Image(systemName: "star.fill")
//                Image(systemName: "star.fill")
//                Image(systemName: "star")
//            }
//        }
//    }
//}
//
//struct MyVStack<Content: View>: View {
//    let content: () -> Content
//    init(@ViewBuilder content: @escaping () -> Content) {
//        self.content = content
//    }
//
//    var body: some View {
//        VStack(spacing: 10) {
//            content()
//        }
//        .font(.largeTitle)
//    }
//}

//struct ContentView: View {
//    var count = 0
//
//    var body: some View {
//        VStack {
//            Text("count: \(count)")
//            Button(action: buttonPressed) {
//                Text("Click Me")
//            }
//        }
//    }
//
//     func buttonPressed() {
//        // Code to perform action here
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            VStack {
//                Text("Text 1")
//                Text("Text 2")
//                MyHStackView()
//                    .font(.largeTitle)
//            }
//            Text("Text 5")
//            //                .font(.custom("Copperplate", size: 70))
//            Text("Sample Text")
//                .border(Color.black)
//                .padding()
//            Text("Sample Text")
//                .padding()
//                .border(Color.black)
//            Text("Text 1")
//                .font(.largeTitle)
//                .background(Color.white)
//                .border(Color.gray, width: 0.2)
//                .shadow(color: Color.black, radius: 5, x: 0, y: 5)
//            Text("Text 1")
//                .modifier(StandardTitle())
//            Text("Text 2")
//                .modifier(StandardTitle())
//        }
//    }
//}
//
//struct StandardTitle: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .font(.largeTitle)
//            .background(Color.white)
//            .border(Color.gray, width: 0.2)
//            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
//    }
//}
//
//struct MyHStackView: View {
//    var body: some View {
//        HStack {
//            Text("Text 3")
//            Text("Text 4")
//        }
//    }
//}

//struct ContentView: View {
//    let carStack: some View = HStack {
//        Text("Car Image")
//        Image(systemName: "car.fill")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//    }
//    var body: some View {
//        VStack {
//            Text("Main Title")
//                .font(.largeTitle)
//            carStack
//            Text("Text 1")
//                .font(.headline)
//                .foregroundColor(.red)
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        Group {
        ContentView()
            .previewDevice("iPhone 13")
//                .previewDevice("iPhone 11")
//                .previewDisplayName("iPhone 11")
//            ContentView()
//                .previewDevice("iPhone SE (2nd generation)")
//                .previewDisplayName("iPhone SE")
//                .environment(\.colorScheme, .dark)
//        }
    }
}
