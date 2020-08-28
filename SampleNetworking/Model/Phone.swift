//
//  Phone.swift
//  SampleNetworking
//
//  Created by Juan Manuel Tome on 28/08/2020.
//  Copyright © 2020 Juan Manuel Tome. All rights reserved.
//
import Foundation

// MARK: - Phone
struct Phone: Codable, Hashable {
    var work, home, mobile: String?
}
