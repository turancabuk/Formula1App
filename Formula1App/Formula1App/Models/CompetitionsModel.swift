////
////  RacesModel.swift
////  Formula1App
////
////  Created by Turan Çabuk on 12.03.2023.
////
import Foundation

// MARK: - Competitions
struct Competitions: Codable {
    let competitionsGet: String?
    let parameters: CompetitionsParameters?
    let results: Int?
    let response: [CompetitionsResponse]?
    
    enum CodingKeys: String, CodingKey {
        case competitionsGet = "CompetitionsGet"
        case parameters = "Parameters"
        case results = "Results"
        case response = "Response"
    }
}

// MARK: - Parameters
struct CompetitionsParameters: Codable {
    let id: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "ID"
    }
}

// MARK: - Response
struct CompetitionsResponse: Codable {
    let id: Int?
    let name: String?
    let location: CompetitionsLocation?
    
    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case name = "Name"
        case location = "Location"
    }
}

// MARK: - Location
struct CompetitionsLocation: Codable {
    let country, city: String?
    
    enum CodingKeys: String, CodingKey {
        case country = "Country"
        case city = "City"
    }
}
