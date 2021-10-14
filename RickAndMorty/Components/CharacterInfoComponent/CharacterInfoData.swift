//
//  CharacterInfoComponent.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 14.10.2021.
//

import Foundation

class CharacterInfoData {
    
    private(set) var characterType: String
    private(set) var characterStatus: String
    
    init(characterType: String, characterStatus: String) {
        self.characterType = characterType
        self.characterStatus = characterStatus
    }
}
