//
//  SecoundView.swift
//  ObserveableDemo
//
//  Created by PC on 5/21/26.
//

import SwiftUI

struct ThirdView: View {
    
    //@StateObject var timerData: TimerData
    @EnvironmentObject var timerData: TimerData
    var body: some View {
        
        VStack{
            Text("Third View").font(.largeTitle).foregroundColor(Color.yellow)
            Text("Timer Count = \(timerData.timeCount)").font(.headline)
            Text("Final Screen").foregroundColor(Color.red)
                
        }
        .padding()
    }
}

#Preview {
    //SecoundView(timerData: TimerData())
    ThirdView().environmentObject(TimerData())
}
