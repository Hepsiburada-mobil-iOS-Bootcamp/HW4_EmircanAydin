//
//  CharacterCardLabelPackData.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 14.10.2021.
//

import Foundation

class CharacterCardLabelPackData {

    private(set) var characterHeader: CharacterHeaderData
    private(set) var characterInfo: CharacterInfoData
    private(set) var characterOriginLocation: CharacterLocationData
    private(set) var characterLastSeenLocation: CharacterLocationData
    
    init(characterHeader: CharacterHeaderData, characterInfo: CharacterInfoData, characterOriginLocation: CharacterLocationData, characterLastSeenLocation: CharacterLocationData) {
        self.characterHeader = characterHeader
        self.characterInfo = characterInfo
        self.characterOriginLocation = characterOriginLocation
        self.characterLastSeenLocation = characterLastSeenLocation
    }
    
}
