//
//  CharacterCollectionComponentDelegate.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 15.10.2021.
//

import Foundation

protocol CharacterCollectionComponentDelegate: AnyObject {
    
    func getNumberOfSection() -> Int
    func getItemCount(in section: Int) -> Int
    func getData(at index: Int) -> GenericDataProtocol?
}
