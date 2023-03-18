//
//  NewsModel.swift
//  Formula1App
//
//  Created by Turan Çabuk on 18.03.2023.
//

import Foundation

// MARK: - NewsElement
struct NewsElement: Codable {
    let title: String?
    let url: String?
    let source: String?
    
    enum CodingKeys: CodingKey {
        case title
        case url
        case source
    }
}