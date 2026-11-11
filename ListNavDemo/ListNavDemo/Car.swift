//
//  car.swift
//  ListNavDemo
//
//  Created by PC on 5/28/26.
//

import Foundation

struct Car: Codable, Identifiable{
    var id: String
    var name: String
    var description: String
    var isHybrid: Bool
    
    var imageName: String
}
