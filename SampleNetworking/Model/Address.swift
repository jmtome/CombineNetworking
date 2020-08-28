//
//  Address.swift
//  SampleNetworking
//
//  Created by Juan Manuel Tome on 28/08/2020.
//  Copyright © 2020 Juan Manuel Tome. All rights reserved.
//
import Foundation

// MARK: - Address
struct Address: Codable, Hashable {
    var street, city, state: String
    var country: Country
    var zipCode: String
}
