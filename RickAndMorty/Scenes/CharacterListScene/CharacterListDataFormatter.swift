//
//  CharacterListDataFormatter.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 15.10.2021.
//

import Foundation

class CharacterListDataFormatter: CharacterListDataFormatterProtocol {
    
    func getItem(from data: RMCharacterModel) -> GenericDataProtocol {
        return CharacterCardData(imageData: CustomImageViewComponentData(imageUrl: data.image),
                                 labelPackData: CharacterCardLabelPackData(characterHeader: CharacterHeaderData(characterName: data.name),
                                                                           characterStatus: CharacterSimpleRowData(rowValue: data.status),
                                                                           characterGender: CharacterSimpleRowData(rowValue: data.gender),
                                                                           characterOriginLocation: CharacterLocationData(location: data.origin.name, isOrigin: true),
                                                                           characterLastSeenLocation: CharacterLocationData(location: data.location.name, isOrigin: false)))
    }
    
    
}
