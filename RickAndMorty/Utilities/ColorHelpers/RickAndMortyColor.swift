//
//  RickAndMortyColor.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 14.10.2021.
//

import UIKit

enum RickAndMortyColor: GenericValueProtocol {
    typealias Value = UIColor
    
    var value: UIColor {
        switch self {
        case .subTitleGray:
            return #colorLiteral(red: 0.5803921569, green: 0.5803921569, blue: 0.5803921569, alpha: 1)
        case .characterCellBackground:
            return #colorLiteral(red: 0.2078431373, green: 0.2117647059, blue: 0.2352941176, alpha: 1)
        case .defaultBackground:
            return #colorLiteral(red: 0.1294117647, green: 0.1411764706, blue: 0.1647058824, alpha: 1)
        }
    }

    case subTitleGray
    case characterCellBackground
    case defaultBackground
    
}
