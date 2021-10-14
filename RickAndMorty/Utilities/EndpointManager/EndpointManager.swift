//
//  EndPointManager.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 12.10.2021.
//

import Foundation

typealias BaseUrl = EndpointManagers.BaseUrl
typealias Paths = EndpointManagers.Paths

enum EndpointManagers {
    
    enum BaseUrl: CustomStringConvertible {
        
        case prod
        
        var description: String {
            switch self {
            case .prod:
                return "https://rickandmortyapi.com/api/"
            }
        }
    }
    
    enum Paths: CustomStringConvertible {
        
        case characterListWithPage
        case characterWithID(Int)
        
        var description: String {
            switch self {
            case .characterListWithPage:
                return "character"
            case .characterWithID(let id):
                return "character/\(id)"
            }
        }
        
    }
    
}
