//
//  MainViewModel.swift
//  Formula1App
//
//  Created by Turan Çabuk on 15.03.2023.
//

import Foundation

final class MainViewModel {
        
//    var timezoneList = [Timezone]()
//    var seasonsList = [Seasons]()
//    var circuitsList = [Circuits]()
//    var competitionsList = [Competitions]()
//    var driversList = [Drivers]()
//    var racesList = [Races]()
    var teamsList = [TeamsResponse]()
//    var pitstopsList = [Pitstops]()
//    var newsList: NewsModel?
    
    private let webservice = MainWebservice()

//    func fetchTimezones() {
//        webservice.fetch(response: [Timezone].self, with: .timezone) { [weak self] result in
//            switch result {
//            case .success(let timezones):
//                self?.timezoneList = timezones
//            case .failure(let error):
//                print("Error fetching timezones: \(error)")
//            }
//        }
//    }
//    func fetchSeasons() {
//        webservice.fetch(response: [Seasons].self, with: .seasons) { [weak self] result in
//            switch result {
//            case .success(let seasons):
//                self?.seasonsList = seasons
//            case .failure(let error):
//                print("Error fetching seasons: \(error)")
//            }
//        }
//    }
//    func fetchCircuits() {
//        webservice.fetch(response: [Circuits].self, with: .circuits) { [weak self] result in
//            switch result {
//            case .success(let circuits):
//                self?.circuitsList = circuits
//            case .failure(let error):
//                print("Error fetching circuits: \(error)")
//            }
//        }
//    }
//    func fetchCompetitions() {
//        webservice.fetch(response: [Competitions].self, with: .competitions) { [weak self] result in
//            switch result {
//            case .success(let competitions):
//                self?.competitionsList = competitions
//            case .failure(let error):
//                print("Error fetching competitions: \(error)")
//            }
//        }
//    }
//    func fetchDrivers() {
//        webservice.fetch(response: [Drivers].self, with: .drivers) { [weak self] result in
//            switch result {
//            case .success(let drivers):
//                self?.driversList = drivers
//            case .failure(let error):
//                print("Error fetching drivers: \(error)")
//            }
//        }
//    }
//    func fetchRaces() {
//        webservice.fetch(response: [Races].self, with: .races) { [weak self] result in
//            switch result {
//            case .success(let races):
//                self?.racesList = races
//            case .failure(let error):
//                print("Error fetching races: \(error)")
//            }
//        }
//    }
    func fetchTeams() {
        webservice.fetch(response: Teams.self, with: .teams) { result in
            switch result {
            case .success(let teams):
                if let response = teams.response {
                    let teamArray = Array(response.values)
                    print("Teams------------------- fetched successfully: \(teamArray)")
                }
            case .failure(let error):
                print("Error---------------- fetching teams: \(error)")
            }
        }
    }
 
//    func fetchPitstops() {
//        webservice.fetch(response: [Pitstops].self, with: .pitstops) { [weak self] result in
//            switch result {
//            case .success(let pitstops):
//                self?.pitstopsList = pitstops
//            case .failure(let error):
//                print("Error fetching pitstops: \(error)")
//            }
//        }
//    }
}


