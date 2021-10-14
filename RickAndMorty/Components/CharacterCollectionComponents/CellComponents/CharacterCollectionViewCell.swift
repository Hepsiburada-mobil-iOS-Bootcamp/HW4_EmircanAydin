//
//  CharacterCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 15.10.2021.
//

import Foundation

class CharacterCollectionViewCell: GenericCollectionViewCell<GenericDataProtocol, CharacterCardComponent> {
    
    override func setupView() {
        super.setupView()
        backgroundColor = RickAndMortyColor.characterCellBackground.value
        contentView.backgroundColor = RickAndMortyColor.characterCellBackground.value
    }
    
}
