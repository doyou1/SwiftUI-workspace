//
//  CarStore.swift
//  ListNavDemo
//
//  Created by AIS on 2022/05/12.
//

import SwiftUI
import Combine

class CarStore: ObservableObject {
    @Published var cars: [Car]

    init(cars: [Car] = []) {
        self.cars = cars
    }
}
