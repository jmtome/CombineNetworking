//
//  Contact.swift
//  SampleNetworking
//
//  Created by Juan Manuel Tome on 28/08/2020.
//  Copyright © 2020 Juan Manuel Tome. All rights reserved.
//
import Foundation

// MARK: - Contact
struct Contact: Codable, Hashable {

    var name, id: String
    var companyName: String?
    var isFavorite: Bool
    var smallImageURL, largeImageURL: String
    var emailAddress, birthdate: String
    var phone: Phone
    var address: Address
}






