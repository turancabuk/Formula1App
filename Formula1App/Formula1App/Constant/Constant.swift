////
////  Constant.swift
////  Formula1App
////
////  Created by Turan Çabuk on 14.03.2023.
////

import Foundation

enum FormulaAPICall {
    private static let timezoneURL = "https://api-formula-1.p.rapidapi.com/timezone"
    private static let seasonsURL = "https://api-formula-1.p.rapidapi.com/seasons"
    private static let circuitsURL = "https://api-formula-1.p.rapidapi.com/circuits?id="
    private static let competitionsURL = "https://api-formula-1.p.rapidapi.com/competitions?id="
    private static let driversURL = "https://api-formula-1.p.rapidapi.com/drivers?search="
    private static let racesURL = "https://api-formula-1.p.rapidapi.com/races?competition=23&type=race&season="
    private static let teamsURL = "https://api-formula-1.p.rapidapi.com/teams?id="
    private static let pitstopsURL = "https://api-formula-1.p.rapidapi.com/pitstops?race="
    private static let newsURL = "https://f1-latest-news.p.rapidapi.com/news"

    case timezone
    case seasons
    case circuits
    case competitions
    case drivers
    case races
    case teams
    case pitstops
    case news

    var urlString: String {
        switch self {
        case .timezone:
            return "\(FormulaAPICall.timezoneURL)"
        case .seasons:
            return "\(FormulaAPICall.seasonsURL)"
        case .circuits:
            return "\(FormulaAPICall.circuitsURL)"
        case .competitions:
            return "\(FormulaAPICall.competitionsURL)"
        case .drivers:
            return "\(FormulaAPICall.driversURL)"
        case .races:
            return "\(FormulaAPICall.racesURL)"
        case .teams:
            return "\(FormulaAPICall.teamsURL)"
        case .pitstops:
            return "\(FormulaAPICall.pitstopsURL)"
        case .news:
            return "\(FormulaAPICall.newsURL)"
        }
    }
    var url: URL {
        return URL(string: urlString)!
    }
}


