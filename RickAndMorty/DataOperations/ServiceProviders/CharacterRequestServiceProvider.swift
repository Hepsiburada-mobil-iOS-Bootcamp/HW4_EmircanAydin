//
//  CharacterRequestServiceProvider.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 12.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class CharacterRequestServiceProvider: ApiServiceProvider<CharacterRequestModel> {
    
    init(request: CharacterRequestModel) {
        super.init(method: .get, baseUrl: BaseUrl.prod.description, path: Paths.characterWithID(request.characterID).description, data: nil)
    }
}
