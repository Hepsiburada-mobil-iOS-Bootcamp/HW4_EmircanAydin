//
//  CharacterInfoComponent.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 14.10.2021.
//

import UIKit

class CharacterSimpleRowComponent: GenericBaseView<CharacterSimpleRowData> {
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.clipsToBounds = true
        temp.backgroundColor = .clear
        return temp
    }()
    
    private lazy var rowLabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.textColor = .white
        temp.text = " "
        temp.contentMode = .left
        temp.textAlignment = .left
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
        rowLabel.text = data.rowValue
    }
    
    private func addHeaderComponents() {
        addSubview(containerView)
        containerView.addSubview(rowLabel)
        
        NSLayoutConstraint.activate([
            
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            rowLabel.topAnchor.constraint(equalTo: containerView.topAnchor),
            rowLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            rowLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            rowLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
        
        ])
    }
}
