////
////  CircuitsModel.swift
////  Formula1App
////
////  Created by Turan Çabuk on 12.03.2023.
////
import Foundation

// MARK: - Circuits
struct Circuits: Codable {
    let circuitsGet: String?
    let results: Int?
    let response: [CircuitsResponse]?
    
    enum CodingKeys: String, CodingKey {
        case circuitsGet = "get"
        case results, response
    }
}

// MARK: - Response
struct CircuitsResponse: Codable {
    let id: Int?
    let name: String?
    let image: String?
    let competition: CircuitsCompetition?
    let firstGrandPrix, laps: Int?
    let length, raceDistance: String?
    let lapRecord: LapRecord?
    let capacity, opened: Int?
    let owner: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name, image, competition
        case firstGrandPrix = "first_grand_prix"
        case laps, length
        case raceDistance = "race_distance"
        case lapRecord = "lap_record"
        case capacity, opened, owner
    }
}

// MARK: - Competition
struct CircuitsCompetition: Codable {
    let id: Int?
    let name: String?
    let location: CircuitsLocation?
}

// MARK: - Location
struct CircuitsLocation: Codable {
    let country: String?
    let city: String?
}

// MARK: - LapRecord
struct LapRecord: Codable {
    let time, driver, year: String?
}
