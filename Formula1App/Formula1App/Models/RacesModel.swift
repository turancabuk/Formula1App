//
//  RacesModel.swift
//  Formula1App
//
//  Created by Turan Çabuk on 14.03.2023.
//
import Foundation

// MARK: - Races
struct Races: Codable {
    let racesGet: String?
    let parameters: RacesParameters?
    let results: Int?
    let response: [RacesResponse]?

    enum CodingKeys: String, CodingKey {
        case racesGet = "get"
        case parameters, results, response
    }
}

// MARK: - Parameters
struct RacesParameters: Codable {
    let competition, type, season: String?

    enum CodingKeys: String, CodingKey {
        case competition = "comp"
        case type = "raceType"
        case season
    }
}

// MARK: - Response
struct RacesResponse: Codable {
    let id: Int?
    let competition: RacesCompetition?
    let circuit: Circuit?
    let season: Int?
    let type: String?
    let laps: Laps?
    let fastestLap: FastestLap?
    let distance, timezone: String?
    let status: String?

    enum CodingKeys: String, CodingKey {
        case id, competition, circuit, season, type, laps, fastestLap, distance, timezone, status
    }
}

// MARK: - Circuit
struct Circuit: Codable {
    let id: Int?
    let name: String?
    let image: String?

    enum CodingKeys: String, CodingKey {
        case id, name, image
    }
}

// MARK: - Competition
struct RacesCompetition: Codable {
    let id: Int?
    let name: String?
    let location: Location?

    enum CodingKeys: String, CodingKey {
        case id, name, location
    }
}

// MARK: - Location
struct Location: Codable {
    let country, city: String?

    enum CodingKeys: String, CodingKey {
        case country, city
    }
}

// MARK: - FastestLap
struct FastestLap: Codable {
    let driver: RacesDriver?
    let time: String?

    enum CodingKeys: String, CodingKey {
        case driver, time
    }
}

// MARK: - Driver
struct RacesDriver: Codable {
    let id: Int?

    enum CodingKeys: String, CodingKey {
        case id
    }
}

// MARK: - Laps
struct Laps: Codable {
    let total: Int?

    enum CodingKeys: String, CodingKey {
        case total = "totalLaps"
    }
}
