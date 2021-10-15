//
//  Pagination.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 15.10.2021.
//

import Foundation

struct PaginationInfo {
    var resultCount: Int = 0
    var limit: Int = 20
    var page: Int = 1
    var fetching: Bool = false
    var refreshing: Bool = false
    
    func checkLoadingMore() -> Bool {
        return limit <= resultCount && !fetching && !refreshing
    }
    
    mutating func nextOffset() {
        fetching = true
        page += 1
    }
}
