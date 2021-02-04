//
//  PokemonCell.swift
//  Pokedex
//
//  Created by Matheus Prado on 03/02/21.
//

import SwiftUI

struct PokemonCell: View {
    var body: some View {
        ZStack{
            VStack{
                Text("Bulbassaur")
                
                HStack{
                    Text("Poison")
                }
            }
        }
        .background(Color.green)
    }
}

struct PokemonCell_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCell()
    }
}
