//
//  RMCharacterResponseModel.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 12.10.2021.
//

import Foundation

struct CharacterResponseModel: Codable {
    let info: ResponseInfoModel
    let results: [RMCharacterModel]
}
