//
//  CharacterListOperationsProtocol.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 15.10.2021.
//

import Foundation
import RxSwift

protocol CharacterListOperationsProtocol {
    
    func getCharacterListData(page: Int)
    
    func subscribeDataPublisher(with completion: @escaping CharacterListResultBlock) -> Disposable
    
    func subscribeDataFlow(with completion: @escaping (Bool) -> Void) -> Disposable
    
}
