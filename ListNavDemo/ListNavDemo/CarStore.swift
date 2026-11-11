//
//  CarStore.swift
//  ListNavDemo
//
//  Created by PC on 5/28/26.
//

import Foundation
import Combine

class CarStore: ObservableObject {
    @Published var cars: [Car]
    
    init(cars: [Car] = []){
        self.cars = cars
    }
}
