//
//  CharacterRequestModel.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 12.10.2021.
//

import Foundation

struct CharacterRequestModel: Codable {
    private(set) var characterID: Int = 1
    
    init(characterID: Int = 1) {
        self.characterID = characterID
    }
}
