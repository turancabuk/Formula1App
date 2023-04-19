////
////  TeamssModel.swift
////  Formula1App
////
////  Created by Turan Çabuk on 12.03.2023.
////
import Foundation



struct Teams: Codable {
    let get: String?
    let results: Int?
    let response: [String: TeamsResponse]?
}

struct TeamsResponse: Codable {
    let id: String?
    let name: String?
    let logo: String?
    let base: String?
    let firstEntry: Int?
    let championships: Int?
    let polePositions: Int?
    let fastestLaps: Int?
    let president: String?
    let director: String?
    let technicalManager: String?
    let chassis: String?
    let engine: String?
    let tyres: String?

    enum CodingKeys: String, CodingKey {
        case id, name, logo, base, firstEntry = "firstEntryYear", championships = "worldChampionships", polePositions, fastestLaps, president, director, technicalManager, chassis, engine, tyres
    }
}


//// MARK: - Teams
//struct Teams: Codable {
//    let teamsGet: String?
//    let results: Int?
//    let response: [String : TeamsResponse]?
//
//    enum CodingKeys: String, CodingKey {
//        case teamsGet = "get"
//        case results, response
//    }
//}
//
//struct TeamsResponse: Codable {
//    let id: Int?
//    let name: String?
//    let logo: String?
//    let base: String?
//    let firstTeamEntry: Int?
//    let worldChampionships: Int?
//    let polePositions: Int?
//    let fastestLaps: Int?
//    let president: String?
//    let director: String?
//    let technicalManager: String?
//    let chassis: String?
//    let engine: String?
//    let tyres: String?
//
//    enum CodingKeys: String, CodingKey {
//        case id, name, logo, base, firstTeamEntry, worldChampionships, polePositions, fastestLaps, president, director, technicalManager, chassis, engine, tyres
//    }
//}
