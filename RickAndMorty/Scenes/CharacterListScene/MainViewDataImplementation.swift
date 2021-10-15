//
//  MainViewDataImplementation.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 15.10.2021.
//

import Foundation

class CharacterListViewDataImplementation: CharacterListDataFormatterProtocol {
    
    private var data: CharacterResponseModel!
    private var list: [RMCharacterModel] = [RMCharacterModel]()
    var paginationInfo: PaginationInfo = PaginationInfo()
    
    func getItem(from data: RMCharacterModel) -> GenericDataProtocol {
        return CharacterCardData(imageData: CustomImageViewComponentData(imageUrl: data.image),
                                 labelPackData: CharacterCardLabelPackData(characterHeader: CharacterHeaderData(characterName: data.name),
                                                                           characterStatus: CharacterSimpleRowData(rowValue: data.status),
                                                                           characterGender: CharacterSimpleRowData(rowValue: data.gender),
                                                                           characterOriginLocation: CharacterLocationData(location: data.origin.name, isOrigin: true),
                                                                           characterLastSeenLocation: CharacterLocationData(location: data.location.name, isOrigin: false)))
    }
    
    func getNumberOfSection() -> Int {
        return 1
    }
    
    func getNumbeOfItem(in section: Int) -> Int {
        let count = list.count
        return (paginationInfo.limit <= paginationInfo.resultCount) ? count + 1 : count
    }
    
    func getCount() -> Int {
        return list.count
    }
    
    func getData(at index: Int) -> RMCharacterModel {
        return list[index]
    }
    
    func setData(with response: CharacterResponseModel) {
        self.data = response
        self.paginationInfo.resultCount = data.results.count
        self.paginationInfo.refreshing = false
        self.list.append(contentsOf: response.results)
    }
    
    func setData(with list: [RMCharacterModel]) {
        self.list = list
    }
    
}
