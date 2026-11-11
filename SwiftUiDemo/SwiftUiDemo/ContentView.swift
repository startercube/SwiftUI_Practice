//
//  ContentView.swift
//  SwiftUiDemo
//
//  Created by PC on 5/14/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotation: Double = 0
    @State private var text: String = "20215243 정준용"
    @State private var colorIndex = 0
    
    var colors: [Color]=[.black,.red, .green, .blue, .purple]
    var colorNames:[String]=["Black", "Red", "Green", "Blue", "Purple"]
    var body: some View {
        VStack {
            Spacer()
            Text(text)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(rotation))
                .animation(.easeInOut(duration: 5), value: rotation)
                .foregroundColor(colors[colorIndex])
            Spacer()
            Divider()
            Slider(value: $rotation, in:0...360, step: 0.1)
            TextField("Enter text here", text:$text).textFieldStyle(RoundedBorderTextFieldStyle())
            Picker(selection: $colorIndex, label: Text("Color")) {
                ForEach(0..<colorNames.count,
                        id:\.self){
                    /*color in*/ Text(self.colorNames[$0]).foregroundColor(colors[$0])
                }
                
            }
            .pickerStyle(.wheel)
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
