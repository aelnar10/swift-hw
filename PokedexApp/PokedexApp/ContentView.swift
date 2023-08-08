//
//  ContentView.swift
//  PokedexApp
//
//  Created by allyza elnar on 8/6/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var pokedexVM = PokedexViewModel()
    var imageURL = "https://img.pokemondb.net/artwork/large/"
    
    var body: some View {
        NavigationStack {
            ZStack {
                List(pokedexVM.pokedexData) { pokemon in
                    HStack {
                        //Text(String(imageURL.appending(pokemon.name)))
                        // it appends but i can't figure out how
                        // to make it show up ): but i have a vague
                        // idea here. the names are definitely appended
                        // to the the end of that
                        AsyncImage(url: URL(string: (imageURL.appending(pokemon.name)))) { image in
                                image
                                   .resizable()
                                   .aspectRatio(contentMode: .fill)
                         } placeholder: {
                             Color.gray
                         }
                          .frame(width: 100, height: 100)
                        Text(pokemon.name)
                   } // end hstack
                } // end list
            } // end zstack
            .navigationTitle("Pokedex")
        } // end navstack
        .onAppear() {
            pokedexVM.getPokemon()
        }
    } // end some view
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
