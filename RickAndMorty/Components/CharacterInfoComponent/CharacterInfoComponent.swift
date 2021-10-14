//
//  CharacterInfoComponent.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 14.10.2021.
//

import UIKit

class CharacterInfoComponent: GenericBaseView<CharacterInfoData> {
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.clipsToBounds = true
        temp.backgroundColor = .white
        return temp
    }()
    
    private lazy var infoLabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.textColor = .white
        temp.text = " "
        temp.contentMode = .center
        temp.textAlignment = .center
        temp.font = FontManager.medium(18).value
        return temp
    }()
    
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
        addHeaderComponents()
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        infoLabel.text = "\(data.characterStatus) - \(data.characterStatus)"
    }
    
    private func addHeaderComponents() {
        addSubview(containerView)
        containerView.addSubview(infoLabel)
        
        NSLayoutConstraint.activate([
            
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            infoLabel.topAnchor.constraint(equalTo: containerView.topAnchor),
            infoLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            infoLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            infoLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
        
        ])
    }
}
