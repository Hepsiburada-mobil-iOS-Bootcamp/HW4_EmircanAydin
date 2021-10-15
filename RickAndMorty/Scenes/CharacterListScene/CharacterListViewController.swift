//
//  CharacterListViewController.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 15.10.2021.
//

import Foundation
import UIKit

class CharacterListViewController: BaseViewController<CharacterListViewModel> {
    
    deinit {
        print("DEINIT CharacterListViewController")
    }
    
    private var mainComponent: CharacterCollectionView!
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        addmainComponent()
        subscribeViewModelListeners()
        viewModel.getCharacterList()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    private func addmainComponent() {
        //mainComponent = mainComponent()
        mainComponent = CharacterCollectionView()
        mainComponent.translatesAutoresizingMaskIntoConstraints = false
        
        mainComponent.setupDelegation(with: viewModel)
        
        view.addSubview(mainComponent)
        
        NSLayoutConstraint.activate([
            mainComponent.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainComponent.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainComponent.topAnchor.constraint(equalTo: view.topAnchor),
            mainComponent.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func subscribeViewModelListeners() {
        
        viewModel.subscribeState { [weak self] state in
            switch state {
            case .done:
                print("data is ready")
                self?.mainComponent.reloadCollectionView()
            case .loading:
                print("data is getting")
            case .failure:
                print("errror")
                // show alert popup
            }
        }
    }
}
