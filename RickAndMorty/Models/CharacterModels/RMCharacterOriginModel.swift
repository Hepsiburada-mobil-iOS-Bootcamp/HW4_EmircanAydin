//
//  RMCharacterOriginModel.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 11.10.2021.
//

import Foundation

//  Properties
//    - name: The name of the origin.
//    - url: Link to the origin's own URL endpoint.
struct RMCharacterOriginModel: Codable {
    let name: String
    let url: String
}
