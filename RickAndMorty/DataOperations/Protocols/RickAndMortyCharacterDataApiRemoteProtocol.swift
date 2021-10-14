//
//  RickAndMortyCharacterDataApiRemote.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 12.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

typealias CharacterListResultBlock = (Result<CharacterResponseModel, ErrorResponse>) -> Void
typealias CharacterResultBlock = (Result<RMCharacterModel, ErrorResponse>) -> Void

protocol RickAndMortyCharacterDataApiRemoteProtocol {
    
    func getCharactersByPageNumber(pageNumber: Int, with completion: @escaping CharacterListResultBlock)
    func getCharacterById(id: Int, with completion: @escaping CharacterResultBlock)
}
