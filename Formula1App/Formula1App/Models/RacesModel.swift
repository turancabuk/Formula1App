//
//  RacesModel.swift
//  Formula1App
//
//  Created by Turan Çabuk on 14.03.2023.
//
import Foundation

// MARK: - Races
struct Races {
    let racesGet: String?
    let parameters: RacesParameters?
    let results: Int?
    let response: [RacesResponse]?
}

// MARK: - Parameters
struct RacesParameters {
    let competition, type, season: String?
}

// MARK: - Response
struct RacesResponse {
    let id: Int?
    let competition: Competition?
    let circuit: Circuit?
    let season: Int?
    let type: String?
    let laps: Laps?
    let fastestLap: FastestLap?
    let distance, timezone: String?
    let date: Date?
    let weather: NSNull?
    let status: String?
}

// MARK: - Circuit
struct Circuit {
    let id: Int?
    let name: String?
    let image: String?
}

// MARK: - Competition
struct Competition {
    let id: Int?
    let name: String?
    let location: Location?
}

// MARK: - Location
struct Location {
    let country, city: String?
}

// MARK: - FastestLap
struct FastestLap {
    let driver: RacesDriver?
    let time: String?
}

// MARK: - Driver
struct RacesDriver {
    let id: Int?
}

// MARK: - Laps
struct Laps {
    let current: NSNull?
    let total: Int?
}
