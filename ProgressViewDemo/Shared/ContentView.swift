//
//  ContentView.swift
//  Shared
//
//  Created by AIS on 2022/05/17.
//

import SwiftUI

struct MyCustomProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        let degrees = configuration.fractionCompleted! * 360
        let percent = Int(configuration.fractionCompleted! * 100)

        return VStack {
            MyCircle(startAngle: .degrees(1), endAngle: .degrees(degrees))
                .frame(width: 200, height: 200)
                .padding(50)
            Text("Task \(percent)% Complete")
        }
    }
}

struct MyCircle: Shape {
    var startAngle: Angle
    var endAngle: Angle

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(
            center: CGPoint(x: rect.midX, y: rect.midY),
            radius: rect.width / 2,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: true
        )

        return path.strokedPath(.init(lineWidth: 100, dash: [5, 3], dashPhase: 10))
    }
}

struct ContentView: View {
    @State private var progress: Double = 1.0

    var body: some View {
        VStack {
            ProgressView("Task Progress", value: progress, total: 100)
                .progressViewStyle(MyCustomProgressViewStyle())
            Slider(value: $progress, in: 1...100, step: 0.1)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
