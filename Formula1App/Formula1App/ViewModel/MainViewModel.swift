//
//  MainViewModel.swift
//  Formula1App
//
//  Created by Turan Çabuk on 15.03.2023.
//

import Foundation

final class MainViewModel {
    
    private let webservice: MainWebserviceProtocol
    
    init(webservice: MainWebserviceProtocol) {
        self.webservice = webservice
    }
    
    var timezoneList = [TimeZone]()
    var seasonsList = [Seasons]()
    var circuitsList = [Circuits]()
    var competitionsList = [Competitions]()
    var driversList = [Drivers]()
    var racesList = [Races]()
    var teamsList = [Teams]()
    var pitstopsList = [Pitstops]()
    
    func fetchTimezoneModel(completion: @escaping(Result<Timezone, Error>) -> Void) {
        webservice.fetch(response: Timezone.self, with: .timezone, completion: { result in
            switch result {
            case .success(let response):
                if let timeZoneStrings = response.response {
                    let timeZones = timeZoneStrings.compactMap { TimeZone(identifier: $0) }
                    self.timezoneList = timeZones
                }
                completion(.success(response))
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
    func fetchSeasonsModel(completion: @escaping(Result<Seasons, Error>) -> Void) {
        webservice.fetch(response: Seasons.self, with: .seasons, completion: { result in
            switch result {
            case .success(let response):
                if let seasonStrings = response.response {
                    let seasons = seasonStrings.map { Seasons (seasonsGet: nil, results: nil, response: [$0]) }
                    self.seasonsList = seasons
                }
                completion(.success(response))
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
    func fetchCircuitsModel(completion: @escaping(Result<Circuits, Error>) -> Void) {
        webservice.fetch(response: Circuits.self, with: .circuits, completion: { result in
            switch result {
            case .success(let response):
                if let circuitsStrings = response.response {
                    let circuits = circuitsStrings.map { Circuits (circuitsGet: nil, results: nil, response: [$0]) }
                    self.circuitsList = circuits
                }
                completion(.success(response))
            case .failure(let error):
                completion (.failure(error))
            }
        })
    }
    func fetchCompetitionsModel(completion: @escaping(Result<Competitions, Error>) -> Void) {
        webservice.fetch(response: Competitions.self, with: .competitions, completion: { result in
            switch result {
            case .success(let response):
                if let competitionsStrings = response.response {
                    let competitions = competitionsStrings.map { Competitions(competitionsGet: nil, parameters: nil, results: nil, response: [$0]) }
                    self.competitionsList = competitions
                }
                completion(.success(response))
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
    func fetchDriversModel(completion: @escaping(Result<Drivers, Error>) -> Void) {
        webservice.fetch(response: Drivers.self, with: .drivers, completion: { result in
            switch result {
            case .success(let response):
                if let driversStrings = response.response {
                    let drivers = driversStrings.map {Drivers(driversGet: nil, parameters: nil, results: nil, response: [$0]) }
                    self.driversList = drivers
                }
                completion(.success(response))
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
}


