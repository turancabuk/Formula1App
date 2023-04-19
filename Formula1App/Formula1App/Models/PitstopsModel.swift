////
////  PitstopsModel.swift
////  Formula1App
////
////  Created by Turan Çabuk on 14.03.2023.
////
//import Foundation
//
//// MARK: - Pitstops
//struct Pitstops: Codable {
//    let pitstopsGet: String?
//    let parameters: PitstopsParameters?
//    let results: Int?
//    let response: [PitstopsResponse]?
//}
//
//// MARK: - Parameters
//struct PitstopsParameters: Codable {
//    let race: String?
//}
//
//// MARK: - Response
//struct PitstopsResponse: Codable {
//    let race: Race?
//    let driver: Driver?
//    let team: Team?
//    let stops, lap: Int?
//    let time, totalTime: String?
//}
//
//// MARK: - Driver
//struct Driver: Codable {
//    let id: Int?
//    let name, abbr: String?
//    let number: Int?
//    let image: String?
//}
//
//// MARK: - Race
//struct Race: Codable {
//    let id: Int?
//}
//
//// MARK: - Team
//struct Team: Codable {
//    let id: Int?
//    let name: String?
//    let logo: String?
//}
