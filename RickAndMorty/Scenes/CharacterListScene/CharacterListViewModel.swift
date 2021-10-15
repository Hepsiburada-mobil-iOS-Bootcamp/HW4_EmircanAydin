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
    
    private var formatter: CharacterListDataFormatterProtocol
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
    
    func getCharacterList(with pagination: Bool = false) {
        state?(.loading)
        operationManager.getCharacterListData(page: formatter.paginationInfo.page)
    }
    
    private func dataHandler(with response: CharacterResponseModel) {
        formatter.paginationInfo.fetching = false
        data = response
        state?(.done)
    }
    
    private func subscribeOperationManagerPublisher() {
        operationManager.subscribeDataPublisher { [weak self] result in
            switch result {
            case .failure(let error):
                print("error: \(error)")
            case .success(let response):
                self?.formatter.setData(with: response)
                self?.dataHandler(with: response)
            }
        }.disposed(by: disposeBag)
    }
}

extension CharacterListViewModel: CharacterCollectionComponentDelegate {
    
    func getNumberOfSection() -> Int {
        return formatter.getNumberOfSection()
    }
    
    func getItemCount(in section: Int) -> Int {
        return formatter.getNumbeOfItem(in: section)
    }
    
    func getData(at index: Int) -> GenericDataProtocol? {
        return formatter.getItem(from: formatter.getData(at: index))
    }
    
    func getMoreData() {
        guard formatter.paginationInfo.checkLoadingMore() else { return }
        formatter.paginationInfo.nextOffset()
        getCharacterList(with: true)
    }
    
    func isLoadingCell(for index: Int) -> Bool {
        return index >= formatter.getCount()
    }
    
}
