//
//  InfoModel.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 12.10.2021.
//

import Foundation

struct ResponseInfoModel: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
