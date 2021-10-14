//
//  UICollectionView+Extension.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 15.10.2021.
//

import Foundation
import UIKit

extension UICollectionView {
    
    func genericRegisterCell<T>(_ type: T.Type) where T: BaseCollectionViewCell {
        register(T.self, forCellWithReuseIdentifier: T.identifier)
    }
    
}
