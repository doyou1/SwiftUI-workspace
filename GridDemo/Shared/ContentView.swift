//
//  ContentView.swift
//  Shared
//
//  Created by AIS on 2022/05/14.
//

import SwiftUI

struct CellContent: View {
    var index: Int
    var color: Color

    var body: some View {
        Text("\(index)")
            .frame(minWidth: 75,  minHeight: 50,
               maxHeight: .infinity)
            .background(color)
            .cornerRadius(8)
            .font(.system(.largeTitle))
    }
}

struct ContentView: View {
    private var colors: [Color] = [.blue, .yellow, .green]
    private var gridItems = [
        GridItem(.fixed(150)),
        GridItem(.flexible(minimum: 50)),
        GridItem(.fixed(150)),
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridItems, spacing: 5) {
                ForEach((0...50), id: \.self) { index in
                    CellContent(index: index, color: colors[index % colors.count])
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
