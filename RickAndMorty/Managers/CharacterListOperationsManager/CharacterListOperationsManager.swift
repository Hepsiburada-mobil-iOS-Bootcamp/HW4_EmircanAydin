//
//  CharacterListOperationsManager.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 15.10.2021.
//

import Foundation
import RxSwift
import DefaultNetworkOperationPackage

class CharacterListOperationsManager: CharacterListOperationsProtocol {
    
    public static let shared = CharacterListOperationsManager()
    
    private init() {}
    
    private let dataPublishSubject = PublishSubject<CharacterListResult>()
    private let dataFlowSubject = PublishSubject<Bool>()
    
    func getCharacterListData(page: Int) {
        let characterListRequest = CharacterListRequestModel(page: page)
        fireApiCall(request: characterListRequest, with: apiCallHandler)
    }
    
    func subscribeDataPublisher(with completion: @escaping CharacterListResultBlock) -> Disposable {
        return dataPublishSubject.subscribe(onNext: completion)
    }
    
    func subscribeDataFlow(with completion: @escaping (Bool) -> Void) -> Disposable {
        return dataFlowSubject.subscribe(onNext: completion)
    }
    
    private func fireApiCall(request: CharacterListRequestModel , with completion: @escaping CharacterListResultBlock) {
        dataFlowSubject.onNext(false)
        
        do {
            let urlRequest = try CharacterListRequestServiceProvider(request: request).returnUrlRequest()
            APIManager.shared.executeRequest(urlRequest: urlRequest, completion: completion)
        } catch let error {
            print("error: \(error)")
        }
    }
    
    private lazy var apiCallHandler: CharacterListResultBlock = { [weak self] result in
        self?.dataPublishSubject.onNext(result)
        self?.dataFlowSubject.onNext(true)
    }
}
