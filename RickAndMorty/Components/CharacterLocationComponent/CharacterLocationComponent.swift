//
//  CharacterLocationComponent.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 14.10.2021.
//

import UIKit

class CharacterLocationComponent: GenericBaseView<CharacterLocationData> {
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.clipsToBounds = true
        temp.backgroundColor = .clear
        return temp
    }()
    
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [titleLabel, locationLabel])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.alignment = .leading
        temp.distribution = .fill
        temp.axis = .vertical
        temp.spacing = 10
        return temp
    }()
    
    private lazy var titleLabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.textColor = RickAndMortyColor.subTitleGray.value
        temp.text = " "
        temp.contentMode = .left
        temp.textAlignment = .left
        temp.font = FontManager.regular(16).value
        return temp
    }()
    
    private lazy var locationLabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.textColor = .white
        temp.text = " "
        temp.contentMode = .left
        temp.textAlignment = .left
        temp.lineBreakMode = .byWordWrapping
        temp.numberOfLines = 0
        temp.font = FontManager.regular(16).value
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addUserComponents()
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        locationLabel.text = data.location
        
        guard data.isOrigin else {
            titleLabel.text = LocationTitle.lastSeen.value
            return
        }
        
        titleLabel.text = LocationTitle.origin.value
    }
    
    private func addUserComponents() {
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
            
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            
        ])
    }
    
}
