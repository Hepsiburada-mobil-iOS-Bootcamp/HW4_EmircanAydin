//
//  CharacterListStateBlock.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 15.10.2021.
//

import Foundation

typealias CharacterListStateBlock = (CharacterListViewState) -> Void

enum CharacterListViewState {
    
    case loading
    case done
    case failure
    
}
