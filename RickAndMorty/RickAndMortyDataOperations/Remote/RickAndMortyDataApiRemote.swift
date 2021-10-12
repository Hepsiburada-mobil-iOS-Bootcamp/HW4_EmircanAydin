//
//  RickAndMortyDataApiRemote.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 12.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class RickAndMortyDataApiRemote: RickAndMortyCharacterDataApiRemoteProtocol {
    
    func getCharactersByPageNumber(pageNumber: Int, with completion: @escaping CharacterListResultBlock) {
        
        do {
            
            let characterListRequest = CharacterListRequestModel(page: pageNumber)
            let urlRequest = try CharacterListRequestServiceProvider(request: characterListRequest).returnUrlRequest()
            print(urlRequest.description)
            
            APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
            
        }  catch let error {
            print("error : \(error)")
        }
        
    }
    
    func getCharacterById(id: Int, with completion: @escaping CharacterResultBlock) {
        
        do {
            
            let characterRequest = CharacterRequestModel(characterID: id)
            let urlRequest = try CharacterRequestServiceProvider(request: characterRequest).returnUrlRequest()
            
            APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
            
        }  catch let error {
            print("error : \(error)")
        }
        
    }
    
    
}
