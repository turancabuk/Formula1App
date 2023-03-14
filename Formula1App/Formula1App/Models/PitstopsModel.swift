//
//  PitstopsModel.swift
//  Formula1App
//
//  Created by Turan Çabuk on 14.03.2023.
//
import Foundation

// MARK: - Pitstops
struct Pitstops {
    let pitstopsGet: String?
    let parameters: PitstopsParameters?
    let errors: [Any?]?
    let results: Int?
    let response: [PitstopsResponse]?
}

// MARK: - Parameters
struct PitstopsParameters {
    let race: String?
}

// MARK: - Response
struct PitstopsResponse {
    let race: Race?
    let driver: Driver?
    let team: Team?
    let stops, lap: Int?
    let time, totalTime: String?
}

// MARK: - Driver
struct Driver {
    let id: Int?
    let name, abbr: String?
    let number: Int?
    let image: String?
}

// MARK: - Race
struct Race {
    let id: Int?
}

// MARK: - Team
struct Team {
    let id: Int?
    let name: String?
    let logo: String?
}
