//
//  CharacterListViewModel.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 15.10.2021.
//

import Foundation
import RxSwift

class CharacterListViewModel {
    
    deinit {
        print("DEINIT CharacterListViewModel")
    }
    
    private let disposeBag = DisposeBag()
    
    private let formatter: CharacterListDataFormatterProtocol
    private let operationManager: CharacterListOperationsProtocol
    
    private var data: CharacterResponseModel?
    private var state: CharacterListStateBlock?
    
    init(formatter: CharacterListDataFormatterProtocol, operationManager: CharacterListOperationsProtocol) {
        self.formatter = formatter
        self.operationManager = operationManager
        subscribeOperationManagerPublisher()
    }
    
    func subscribeState(completion: @escaping CharacterListStateBlock) {
        state = completion
    }
    
    func getCharacterList() {
        state?(.loading)
        operationManager.getCharacterListData(page: 2)
    }
    
    private func dataHandler(with response: CharacterResponseModel) {
        data = response
        state?(.done)
    }
    
    private func subscribeOperationManagerPublisher() {
        operationManager.subscribeDataPublisher { [weak self] result in
            switch result {
            case .failure(let error):
                print("error: \(error)")
            case .success(let response):
                self?.dataHandler(with: response)
            }
        }.disposed(by: disposeBag)
    }
}

extension CharacterListViewModel: CharacterCollectionComponentDelegate {
    
    func getNumberOfSection() -> Int {
        return 1
    }
    
    func getItemCount(in section: Int) -> Int {
        guard let dataUnwrapped = data else { return 0 }
        return dataUnwrapped.results.count
    }
    
    func getData(at index: Int) -> GenericDataProtocol? {
        guard let dataUnwrapped = data else { return nil }
        return formatter.getItem(from: dataUnwrapped.results[index])
    }
}
