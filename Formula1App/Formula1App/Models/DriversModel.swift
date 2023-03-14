////
////  DriversModel.swift
////  Formula1App
////
////  Created by Turan Çabuk on 12.03.2023.
////
import Foundation

// MARK: - Drivers
struct Drivers {
    let driversGet: String?
    let parameters: Parameters?
    let errors: [Any?]?
    let results: Int?
    let response: [Response]?
}

// MARK: - Parameters
struct Parameters {
    let search: String?
}

// MARK: - Response
struct Response {
    let id: Int?
    let name, abbr: String?
    let image: String?
    let nationality: String?
    let country: Country?
    let birthdate, birthplace: String?
    let number, grandsPrixEntered, worldChampionships, podiums: Int?
    let highestRaceFinish: DriversHighestRaceFinish?
    let highestGridPosition: Int?
    let careerPoints: String?
    let teams: [TeamElement]?
}

// MARK: - Country
struct Country {
    let name, code: String?
}

// MARK: - HighestRaceFinish
struct DriversHighestRaceFinish {
    let position, number: Int?
}

// MARK: - TeamElement
struct TeamElement {
    let season: Int?
    let team: TeamTeam?
}

// MARK: - TeamTeam
struct TeamTeam {
    let id: Int?
    let name: Name?
    let logo: String?
}

enum Name {
    case mcLarenRacing
    case mercedesAMGPetronas
}
