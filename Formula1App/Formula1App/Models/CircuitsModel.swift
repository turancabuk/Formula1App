////
////  CircuitsModel.swift
////  Formula1App
////
////  Created by Turan Çabuk on 12.03.2023.
////
import Foundation

// MARK: - Circuits
struct Circuits {
    let circuitsGet: String?
    let parameters, errors: [Any?]?
    let results: Int?
    let response: [CircuitsResponse]?
}

// MARK: - Response
struct CircuitsResponse {
    let id: Int?
    let name: String?
    let image: String?
    let competition: CircuitsCompetition?
    let firstGrandPrix, laps: Int?
    let length, raceDistance: String?
    let lapRecord: LapRecord?
    let capacity, opened: Int?
    let owner: String?
}

// MARK: - Competition
struct CircuitsCompetition {
    let id: Int?
    let name: String?
    let location: CircuitsLocation?
}

// MARK: - Location
struct CircuitsLocation {
    let country: String?
    let city: String?
}

// MARK: - LapRecord
struct LapRecord {
    let time, driver, year: String?
}
