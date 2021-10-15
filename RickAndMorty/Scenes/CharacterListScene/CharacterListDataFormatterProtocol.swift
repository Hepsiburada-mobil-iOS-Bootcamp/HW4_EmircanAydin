//
//  CharacterListDataFormatterProtocol.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 15.10.2021.
//

import Foundation

protocol CharacterListDataFormatterProtocol {
    
    var paginationInfo: PaginationInfo { get set }
    
    func getItem(from data: RMCharacterModel) -> GenericDataProtocol
    
    func getNumberOfSection() -> Int
    
    func getNumbeOfItem(in section: Int) -> Int
    
    func getCount() -> Int
    
    func getData(at index: Int) -> RMCharacterModel
    
    func setData(with response: CharacterResponseModel)
    
    func setData(with list: [RMCharacterModel])
    
    
}
