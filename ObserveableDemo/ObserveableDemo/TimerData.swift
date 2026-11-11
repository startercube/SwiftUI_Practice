//
//  TimerData.swift
//  ObserveableDemo
//
//  Created by PC on 5/21/26.
//

import Foundation
import Combine

class TimerData : ObservableObject {
    @Published var timeCount = 0;
    private var timer: Timer?
    
    init() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timeDidFire), userInfo: nil, repeats: true)
    }
    @objc func timeDidFire(){
        timeCount+=1
    }
    func resetCount() {
        timeCount=0
    }
}
