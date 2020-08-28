//
//  NetworkService.swift
//  SampleNetworking
//
//  Created by Juan Manuel Tome on 28/08/2020.
//  Copyright © 2020 Juan Manuel Tome. All rights reserved.
//

import Foundation
import Combine


final class NetworkService {
    
    func fetchRequest(with urlString: String) -> AnyPublisher<[Contact], Error>{
        
        guard let url = URL(string: urlString) else { fatalError() }
        
        let session = URLSession.shared
        return session.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [Contact].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}


