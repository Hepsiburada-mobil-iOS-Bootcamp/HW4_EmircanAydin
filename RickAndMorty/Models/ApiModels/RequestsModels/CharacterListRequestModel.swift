//
//  CharacterListRequestModel.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 12.10.2021.
//

import Foundation

struct CharacterListRequestModel: Codable {
    private(set) var page: Int = 1
    
    init(page: Int = 1) {
        self.page = page
    }
}
