//
//  CharacterListServiceProvider.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 12.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class CharacterListRequestServiceProvider: ApiServiceProvider<CharacterListRequestModel> {
    
    init(request: CharacterListRequestModel) {
        super.init(method: .get, baseUrl: BaseUrl.prod.description, path: Paths.characterListWithPage(request.page).description, data: nil)
    }
}
