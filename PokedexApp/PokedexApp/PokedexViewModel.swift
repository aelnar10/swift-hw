//
//  PokedexViewModel.swift
//  PokedexApp
//
//  Created by allyza elnar on 8/6/23.
//

import Foundation
import Combine

class PokedexViewModel: ObservableObject {
    
    @Published var pokedexData = [Pokemon]()
    
    let service: PokedexProtocol
    init(service: PokedexProtocol = PokedexService()){
        self.service = service
    }
    
    @MainActor func getPokemon() {
        Task {
            do {
                self.pokedexData = try await service.fetchPokemon()
            } catch {
                print(error.localizedDescription)
            }
        } // task end
    } // end getstocks func
    
}
