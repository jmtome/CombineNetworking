//
//  ContactViewModel.swift
//  SampleNetworking
//
//  Created by Juan Manuel Tome on 28/08/2020.
//  Copyright © 2020 Juan Manuel Tome. All rights reserved.
//

import Foundation
import Combine

struct ContactViewModel: Hashable {
    private let contact: Contact
    
    var id: String {
        return contact.id
    }
    
    var name: String {
        return contact.name
    }
    var isFavorite: Bool {
        return contact.isFavorite
    }
    
    init(_ contact: Contact) {
        self.contact = contact
    }
    
}
