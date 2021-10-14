//
//  CharacterLocationData.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 14.10.2021.
//

import Foundation

class CharacterLocationData {
    
    private(set) var location: String
    private(set) var isOrigin: Bool
    
    init(location: String, isOrigin: Bool) {
        self.location = location
        self.isOrigin = isOrigin
    }
}
