//
//  ContentView.swift
//  ObserveableDemo
//
//  Created by PC on 5/21/26.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var timerData: TimerData = TimerData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: resetCount){
                    Text("Reset Timer")
                }
                //NavigationLink(destination: SecondView(timerData: timerData)) {
                NavigationLink(destination: SecondView()){
                    Text("Next Screen")
                }
                .padding()
            }
            .navigationBarTitle(Text("20215243 정준용"))
        }
        .environmentObject(timerData)
    }
    func resetCount() {
        timerData.resetCount()
    }
}

#Preview {
    ContentView()
}
