////
////  TeamssModel.swift
////  Formula1App
////
////  Created by Turan Çabuk on 12.03.2023.
////
import Foundation

// MARK: - Teams
struct Teams: Codable {
    let teamsGet: String?
    let parameters: TeamsParameters?
    let results: Int?
    let response: [TeamsResponse]?
    
    enum CodingKeys: String, CodingKey {
        case teamsGet = "get"
        case parameters, results, response
    }

}

// MARK: - Parameters
struct TeamsParameters: Codable {
    let id: String?
    
    enum CodingKeys: String, CodingKey {
        case id
    }
}

// MARK: - Response
struct TeamsResponse: Codable {
    let id: Int?
    let name: String?
    let logo: String?
    let base: String?
    let firstTeamEntry, worldChampionships: Int?
    let highestRaceFinish: HighestRaceFinish?
    let polePositions, fastestLaps: Int?
    let president, director, technicalManager, chassis: String?
    let engine, tyres: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name, logo, base, firstTeamEntry, worldChampionships, highestRaceFinish, polePositions, fastestLaps, president, director, technicalManager, chassis, engine, tyres
    }

}

// MARK: - HighestRaceFinish
struct HighestRaceFinish: Codable {
    let position, number: Int?
    
    enum CodingKeys: String, CodingKey {
        case position, number
    }

}
