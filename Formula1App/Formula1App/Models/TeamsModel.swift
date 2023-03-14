////
////  TeamssModel.swift
////  Formula1App
////
////  Created by Turan Çabuk on 12.03.2023.
////
import Foundation

// MARK: - Teams
struct Teams {
    let teamsGet: String?
    let parameters: TeamsParameters?
    let errors: [Any?]?
    let results: Int?
    let response: [TeamsResponse]?
}

// MARK: - Parameters
struct TeamsParameters {
    let id: String?
}

// MARK: - Response
struct TeamsResponse {
    let id: Int?
    let name: String?
    let logo: String?
    let base: String?
    let firstTeamEntry, worldChampionships: Int?
    let highestRaceFinish: HighestRaceFinish?
    let polePositions, fastestLaps: Int?
    let president, director, technicalManager, chassis: String?
    let engine, tyres: String?
}

// MARK: - HighestRaceFinish
struct HighestRaceFinish {
    let position, number: Int?
}
