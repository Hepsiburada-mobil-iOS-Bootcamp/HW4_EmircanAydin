//
//  RMCharacterLocationModel.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 11.10.2021.
//

import Foundation

//  Properties
//    - name: The name of the location.
//    - url: Link to the location's own URL endpoint.
struct RMCharacterLocationModel: Codable {
    let name: String
    let url: String
}
