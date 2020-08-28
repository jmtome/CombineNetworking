//
//  ContactListViewModel.swift
//  SampleNetworking
//
//  Created by Juan Manuel Tome on 28/08/2020.
//  Copyright © 2020 Juan Manuel Tome. All rights reserved.
//

import Foundation
import Combine

class ContactListViewModel: ObservableObject {
    
    private let networkService = NetworkService()
    @Published var contactViewModels = [ContactViewModel]()
    
    var cancellable: AnyCancellable?
    
    func fetchContacts() {
        cancellable = networkService.fetchRequest(with: Constants.contactsURL).sink(receiveCompletion: { (_) in
            
        }, receiveValue: { (contacts) in
            self.contactViewModels = contacts.map { ContactViewModel($0) }
            print(self.contactViewModels)
        })
    }
}
