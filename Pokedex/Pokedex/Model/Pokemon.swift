//
//  Pokemon.swift
//  Pokedex
//
//  Created by Matheus Prado on 06/02/21.
//

import Foundation

struct Pokemon: Decodable, Identifiable{
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bulbassaur", imageUrl: "1", type: "Poison"),
    .init(id: 1, name: "Ivysaur", imageUrl: "1", type: "Poison"),
    .init(id: 2, name: "Venusaur", imageUrl: "1", type: "Poison"),
    .init(id: 3, name: "Charmander", imageUrl: "1", type: "Fire"),
    .init(id: 4, name: "Charmeleon", imageUrl: "1", type: "Fire"),
    .init(id: 5, name: "Charizard", imageUrl: "1", type: "Fire"),
]


