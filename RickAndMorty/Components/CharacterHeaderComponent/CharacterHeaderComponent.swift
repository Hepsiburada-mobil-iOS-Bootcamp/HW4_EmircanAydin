//
//  CharacterHeaderComponent.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 14.10.2021.
//

import UIKit

class CharacterHeaderComponent: GenericBaseView<CharacterHeaderData> {
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.clipsToBounds = true
        temp.backgroundColor = .white
        return temp
    }()
    
    private lazy var headerLabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.textColor = .white
        temp.text = " "
        temp.contentMode = .center
        temp.textAlignment = .center
        temp.font = FontManager.bold(24).value
        return temp
    }()
    
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
        addHeaderComponents()
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        headerLabel.text = data.characterName
    }
    
    private func addHeaderComponents() {
        addSubview(containerView)
        containerView.addSubview(headerLabel)
        
        NSLayoutConstraint.activate([
            
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            headerLabel.topAnchor.constraint(equalTo: containerView.topAnchor),
            headerLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            headerLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            headerLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
        
        ])
    }
}
