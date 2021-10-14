//
//  CharacterCardData.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 14.10.2021.
//

import Foundation

class CharacterCardData {

    private(set) var imageData: CustomImageViewComponentData
    private(set) var labelPackData: CharacterCardLabelPackData
    
    init(imageData: CustomImageViewComponentData, labelPackData: CharacterCardLabelPackData) {
        self.imageData = imageData
        self.labelPackData = labelPackData
    }
}
