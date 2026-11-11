//
//  SecoundView.swift
//  ObserveableDemo
//
//  Created by PC on 5/21/26.
//

import SwiftUI

struct SecondView: View {
    
    //@StateObject var timerData: TimerData
    @EnvironmentObject var timerData: TimerData
    var body: some View {
        
        VStack{
            Text("Second View").font(.largeTitle).foregroundColor(Color.green)
            Text("Timer Count = \(timerData.timeCount)").font(.headline)
            NavigationLink(destination: ThirdView()){
                Text("Next Screen")
            }
        }
        .padding()
    }
}

#Preview {
    //SecoundView(timerData: TimerData())
    SecondView().environmentObject(TimerData())
}
