//
//  CharacterCollectionView.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 15.10.2021.
//

import UIKit

class CharacterCollectionView: GenericBaseView<CharacterCollectionViewData> {
    
    private weak var delegate: CharacterCollectionComponentDelegate?
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .white
        collection.delegate = self
        collection.dataSource = self
        collection.keyboardDismissMode = .onDrag
        collection.showsVerticalScrollIndicator = false
        collection.showsHorizontalScrollIndicator = false
        collection.genericRegisterCell(CharacterCollectionViewCell.self)
        return collection
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addCollectionView()
    }
    
    func setupDelegation(with delegate: CharacterCollectionComponentDelegate) {
        self.delegate = delegate
    }
    
    private func addCollectionView() {
        addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor)
            
        ])
        
    }
}

extension CharacterCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return delegate?.getNumberOfSection() ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return delegate?.getItemCount(in: section) ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let data = delegate?.getData(at: indexPath.row) else { fatalError() }
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CharacterCollectionViewCell.identifier, for: indexPath) as? CharacterCollectionViewCell else { fatalError() }
        cell.setRowData(data: data)
        return cell
    }
}

extension CharacterCollectionView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = (UIScreen.main.bounds.height - 50) / 3
        let width = UIScreen.main.bounds.width
        return CGSize(width: width, height: height)
    }
}
