//
//  Car.swift
//  ListNavDemo
//
//  Created by AIS on 2022/05/12.
//

import SwiftUI

struct Car: Codable, Identifiable {
    var id: String
    var name: String
    var description: String
    var isHybrid: Bool
    var imageName: String
}
