//
//  JokesData.swift
//  JockesAppSwiftUI
//
//  Created by Jinu on 16/11/2023.
//

import Foundation

// MARK: - Temperatures
struct Welcome: Identifiable,Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Identifiable,Codable {
    let id: Int
    let joke: String
    let categories: [String]
}

//https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json
//http://api.icndb.com/jokes/random/
