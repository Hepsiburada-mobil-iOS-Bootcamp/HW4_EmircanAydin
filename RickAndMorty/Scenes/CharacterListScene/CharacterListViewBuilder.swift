//
//  CharacterListViewBuilder.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 15.10.2021.
//

import UIKit

class CharacterListViewBuilder {
    
    class func build() -> UIViewController {
        let characterListFormatter = CharacterListViewDataImplementation()
        let manager = CharacterListOperationsManager.shared
        let viewModel = CharacterListViewModel(formatter: characterListFormatter, operationManager: manager)
        let viewController = CharacterListViewController(viewModel: viewModel)
        return viewController
    }
    
}
