//
//  PokemonViewModel.swift
//  Pokedex
//
//  Created by Matheus Prado on 06/02/21.
//

import SwiftUI

class PokemonViewModel: ObservableObject{
    @Published var pokemon = [Pokemon]()
    let baseUrl = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    init(){
        fetchPokemon()
    }
    
    func fetchPokemon(){
        guard let url = URL(string: baseUrl) else { return }
        URLSession.shared.dataTask(with: url) { (data, res, error) in
            guard let data = data?.parseData(removeString: "null,") else { return }
            guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: data) else { return }
            
            DispatchQueue.main.async {
                self.pokemon = pokemon
            }
        }.resume()
    }
    
    func backGroundColor(forType type: String) -> Color {
        switch type {
        case "fire": return Color(.systemRed)
        case "poison": return Color(.systemGreen)
        case "water": return Color(.systemTeal)
        case "eletric": return Color(.systemYellow)
        case "psychic": return Color(.systemPurple)
        case "normal": return Color(.systemOrange)
        case "ground": return Color(.systemGray)
        case "flying": return Color(.systemTeal)
        case "fairy": return Color(.systemPink)
        default: return Color(.systemIndigo)
        }
    }
}


extension Data{
    func parseData(removeString string: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let parsedDataString = dataAsString?.replacingOccurrences(of: string, with: "")
        guard let data = parsedDataString?.data(using: .utf8) else { return nil}
        return data
    }
}

