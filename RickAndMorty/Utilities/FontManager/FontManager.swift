//
//  File.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 14.10.2021.
//

import Foundation
import UIKit

enum FontManager: GenericValueProtocol {
    
    var value: UIFont {
        switch self {
        case .bold(let size):
            return UIFont(name: "Roboto-Bold", size: size) ?? UIFont.systemFont(ofSize: size, weight: .bold)
        case .regular(let size):
            return UIFont(name: "Roboto-Regular", size: size) ?? UIFont.systemFont(ofSize: size, weight: .regular)
        case .medium(let size):
            return UIFont(name: "Roboto-Medium", size: size) ?? UIFont.systemFont(ofSize: size, weight: .medium)
        }
    }
    
    typealias Value = UIFont
    
    
    case bold(CGFloat)
    case regular(CGFloat)
    case medium(CGFloat)
    
}
