//
//  ContentView.swift
//  Shared
//
//  Created by AIS on 2022/05/17.
//

import SwiftUI

struct ContentView: View {
    
    @GestureState private var offset: CGSize = .zero

    var body: some View {
        let drag = DragGesture()
                            .updating($offset) { dragValue, state, transaction in
                             
                                print("dragValue: \(dragValue) state: \(state) transaction: \(transaction)")
                                state = dragValue.translation
                            }

        return Image(systemName: "hand.point.right.fill")
                        .font(.largeTitle)
                        .offset(offset)
                        .gesture(drag)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
