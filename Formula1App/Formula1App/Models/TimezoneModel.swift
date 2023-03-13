//
//  TimezoneModel.swift
//  Formula1App
//
//  Created by Turan Çabuk on 12.03.2023.
//

import Foundation

// MARK: - Timezone
struct Timezone: Codable {
    let response: [String]
    let driversGet: String
    let results: Int
}
// MARK: - Circuits
struct Circuits {
    let seasonsGet: String?
    let parameters, errors: [Any?]?
    let results: Int?
    let response: [Response]?
}
// MARK: - Seasons
struct Seasons {
    let seasonsGet: String?
    let parameters, errors: [Any?]?
    let results: Int?
    let response: [Int]?
}
// MARK: - Competitions
struct Competitions {
    let competitionsGet: String?
    let parameters, errors: [Any?]?
    let results: Int?
}
// MARK: - Competition
struct Competition {
    let id: Int?
    let name: String?
    let location: Location?
}
// MARK: - Teams
struct Teams {
    let teamsGet: String
    let results: Int
}
// MARK: - Response
struct Response {
    let id: Int?
    let name: String?
    let image: String?
    let competition: Competition?
    let firstGrandPrix, laps: Int?
    let length, raceDistance: String?
    let lapRecord: LapRecord?
    let capacity, opened: Int?
    let nationality: String
    let country: Country
    let birthdate, birthplace: String
    let number, grandsPrixEntered, worldChampionships, podiums: Int
    let highestGridPosition: Int
    let careerPoints: String
    let teams: [TeamElement]
    let base, firstTeamEntry: NSNull
    let polePositions, fastestLaps: NSNull
    let president, director, technicalManager: String
    let chassis: NSNull
    let engine, tyres: String
}
// MARK: - Country
struct Country {
    let name, code: String
}
// MARK: - TeamElement
struct TeamElement {
    let season: Int
    let team: TeamTeam
}

// MARK: - TeamTeam
struct TeamTeam {
    let id: Int
    let name: Name
    let logo: String
    
    enum Name {
        case astonMartinF1Team
        case redBullRacing
        case scuderiaFerrari
    }
}
// MARK: - LapRecord
struct LapRecord {
    let time, driver, year: String?
}
// MARK: - Location
struct Location {
    let country: String?
    let city: String?
}



