//
//  CharacterCardLabelPackComponent.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 14.10.2021.
//

import UIKit

class CharacterCardLabelPackComponent: GenericBaseView<CharacterCardLabelPackData> {
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.clipsToBounds = true
        temp.backgroundColor = .clear
        return temp
    }()
    
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [characterHeader, characterStatus, characterGender, characterOriginLocation, characterLastSeenLocation])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.alignment = .leading
        temp.distribution = .fill
        temp.axis = .vertical
        temp.spacing = 10
        return temp
    }()
    
    private lazy var characterHeader: CharacterHeaderComponent = {
        let temp = CharacterHeaderComponent()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    private lazy var characterStatus: CharacterSimpleRowComponent = {
        let temp = CharacterSimpleRowComponent()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    private lazy var characterGender: CharacterSimpleRowComponent = {
        let temp = CharacterSimpleRowComponent()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    private lazy var characterOriginLocation: CharacterLocationComponent = {
        let temp = CharacterLocationComponent()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    private lazy var characterLastSeenLocation: CharacterLocationComponent = {
        let temp = CharacterLocationComponent()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addUserComponents()
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        characterHeader.setData(by: data.characterHeader)
        characterStatus.setData(by: data.characterStatus)
        characterGender.setData(by: data.characterGender)
        characterOriginLocation.setData(by: data.characterOriginLocation)
        characterLastSeenLocation.setData(by: data.characterLastSeenLocation)
    }
    
    private func addUserComponents() {
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
            
            containerView.topAnchor.constraint(equalTo: topAnchor),
            
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            
            mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            
        ])
        
    }
}
