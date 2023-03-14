////
////  RacesModel.swift
////  Formula1App
////
////  Created by Turan Çabuk on 12.03.2023.
////
import Foundation

// MARK: - Competitions
struct Competitions {
    let competitionsGet: String?
    let parameters: CompetitionsParameters?
    let errors: [Any?]?
    let results: Int?
    let response: [CompetitionsResponse]?
}

// MARK: - Parameters
struct CompetitionsParameters {
    let id: String?
}

// MARK: - Response
struct CompetitionsResponse {
    let id: Int?
    let name: String?
    let location: CompetitionsLocation?
}

// MARK: - Location
struct CompetitionsLocation {
    let country, city: String?
}
