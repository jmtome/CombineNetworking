//
//  ContentView.swift
//  SampleNetworking
//
//  Created by Juan Manuel Tome on 28/08/2020.
//  Copyright © 2020 Juan Manuel Tome. All rights reserved.
//

import SwiftUI
import Combine

struct ContactsView: View {
    
    @ObservedObject private var viewModel = ContactListViewModel()
    
    var body: some View {
        List(viewModel.contactViewModels, id:\.self) { contactViewModel in
            HStack(alignment: .lastTextBaseline, spacing: 20) {
                contactViewModel.isFavorite ? Image(systemName: "star.fill") : Image(systemName: "star")
                Text("Name: \(contactViewModel.name)")
            }
        }.onAppear{
            self.viewModel.fetchContacts()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}








