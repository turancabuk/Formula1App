////
////  Constant.swift
////  Formula1App
////
////  Created by Turan Çabuk on 14.03.2023.
////

import Foundation
import UIKit

enum FormulaAPICall: String {
    public static let timezoneURL = "https://api-formula-1.p.rapidapi.com/timezone"
    public static let seasonsURL = "https://api-formula-1.p.rapidapi.com/seasons"
    public static let circuitsURL = "https://api-formula-1.p.rapidapi.com/circuits?id="
    public static let competitionsURL = "https://api-formula-1.p.rapidapi.com/competitions?id="
    public static let driversURL = "https://api-formula-1.p.rapidapi.com/drivers?search="
    public static let racesURL = "https://api-formula-1.p.rapidapi.com/races?competition=23&type=race&season="
    public static let teamsURL = "https://api-formula-1.p.rapidapi.com/teams?id="
    public static let pitstopsURL = "https://api-formula-1.p.rapidapi.com/pitstops?race="
    public static let newsURL = "https://f1-latest-news.p.rapidapi.com/news"

    case timezone
    case seasons
    case circuits
    case competitions
    case drivers
    case races
    case teams
    case pitstops
    case news

    var url: URL {
        switch self {
        case .timezone:
            return URL(string: FormulaAPICall.timezoneURL)!
        case .seasons:
            return URL(string: FormulaAPICall.seasonsURL)!
        case .circuits:
            return URL(string: FormulaAPICall.circuitsURL)!
        case .competitions:
            return URL(string: FormulaAPICall.competitionsURL)!
        case .drivers:
            return URL(string: FormulaAPICall.driversURL)!
        case .races:
            return URL(string: FormulaAPICall.racesURL)!
        case .teams:
            return URL(string: FormulaAPICall.teamsURL)!
        case .pitstops:
            return URL(string: FormulaAPICall.pitstopsURL)!
        case .news:
            return URL(string: FormulaAPICall.newsURL)!
        }
    }
}
