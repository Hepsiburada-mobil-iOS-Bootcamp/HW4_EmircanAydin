//
//  CharacterCardLabelPackData.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 14.10.2021.
//

import Foundation

class CharacterCardLabelPackData {

    private(set) var characterHeader: CharacterHeaderData
    private(set) var characterStatus: CharacterSimpleRowData
    private(set) var characterGender: CharacterSimpleRowData
    private(set) var characterOriginLocation: CharacterLocationData
    private(set) var characterLastSeenLocation: CharacterLocationData
    
    init(characterHeader: CharacterHeaderData, characterStatus: CharacterSimpleRowData, characterGender: CharacterSimpleRowData, characterOriginLocation: CharacterLocationData, characterLastSeenLocation: CharacterLocationData) {
        self.characterHeader = characterHeader
        self.characterStatus = characterStatus
        self.characterGender = characterGender
        self.characterOriginLocation = characterOriginLocation
        self.characterLastSeenLocation = characterLastSeenLocation
    }
    
}
