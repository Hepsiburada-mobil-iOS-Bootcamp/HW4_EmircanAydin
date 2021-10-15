//
//  CharacterListDataFormatterProtocol.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 15.10.2021.
//

import Foundation

protocol CharacterListDataFormatterProtocol {
    
    func getItem(from data: RMCharacterModel) -> GenericDataProtocol
    
}
