//
//  PokedexView.swift
//  Pokedex
//
//  Created by Matheus Prado on 04/02/21.
//

import SwiftUI

struct PokedexView: View {
    
    private let gridItens = [GridItem(.flexible()), GridItem(.flexible())]
    
    @ObservedObject var viewModel = PokemonViewModel()
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItens, spacing:16) {
                    //dont loading all of those things at once right
                    ForEach(viewModel.pokemon){ pokemon in
                        PokemonCell(pokemon: pokemon)
                    }
                }
            }
            .navigationTitle("Pokedex (=")
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
