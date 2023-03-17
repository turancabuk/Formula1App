////
////  DriversModel.swift
////  Formula1App
////
////  Created by Turan Çabuk on 12.03.2023.
////
// MARK: - Drivers
struct Drivers: Codable {
    let driversGet: String?
    let parameters: Parameters?
    let results: Int?
    let response: [DriversResponse]?

    enum CodingKeys: String, CodingKey {
        case driversGet = "DriversGet"
        case parameters = "Parameters"
        case results = "Results"
        case response = "Response"
    }
}

// MARK: - Parameters
struct Parameters: Codable {
    let search: String?

    enum CodingKeys: String, CodingKey {
        case search = "Search"
    }
}

// MARK: - Response
struct DriversResponse: Codable {
    let id: String?
    let name, abbreviation, imageName, nationality: String?
    let country: Country?
    let birthdate, birthplace: String?
    let number, grandPrixEntered, worldChampionships, podiums: Int?
    let highestRaceFinish: DriversHighestRaceFinish?
    let highestGridPosition: Int?
    let careerPoints: String?
    let teams: [DriversTeam]?

    enum CodingKeys: String, CodingKey {
        case id = "driverId"
        case name = "driverName"
        case abbreviation = "driverAbbr"
        case imageName = "driverImageUrl"
        case nationality = "driverNationality"
        case country = "driverCountry"
        case birthdate = "driverBirthdate"
        case birthplace = "driverBirthPlace"
        case number = "driverNumber"
        case grandPrixEntered = "driverGrandsPrixEntered"
        case worldChampionships = "driverWorldChampionships"
        case podiums = "driverPodiums"
        case highestRaceFinish = "driverHighestRaceFinish"
        case highestGridPosition = "driverHighestGridPosition"
        case careerPoints = "driverCareerPoints"
        case teams = "driverTeams"
    }
}

// MARK: - Country
struct Country: Codable {
    let name: String?
    let code: String?

    enum CodingKeys: String, CodingKey {
        case name = "countryName"
        case code = "countryCode"
    }
}

// MARK: - HighestRaceFinish
struct DriversHighestRaceFinish: Codable {
    let position: Int?
    let number: Int?

    enum CodingKeys: String, CodingKey {
        case position = "raceFinishPosition"
        case number = "raceFinishNumber"
    }
}

// MARK: - Team
struct DriversTeam: Codable {
    let season: Int?
    let team: TeamInfo?

    enum CodingKeys: String, CodingKey {
        case season = "teamSeason"
        case team = "teamInfo"
    }
}

// MARK: - TeamInfo
struct TeamInfo: Codable {
    let id: String?
    let name: String?
    let logo: String?

    enum CodingKeys: String, CodingKey {
        case id = "teamId"
        case name = "teamName"
        case logo = "teamLogoUrl"
    }
}
