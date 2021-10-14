//
//  LocationTitleString.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 14.10.2021.
//

import Foundation

enum LocationTitle: GenericValueProtocol {
    typealias Value = String
    
    var value: String {
        switch self {
        case .origin:
            return "First seen in:"
        case .lastSeen:
            return "Last known location:"
        }
    }
    
    case origin
    case lastSeen
    
    
}
