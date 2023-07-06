//
//  HomeViewModel.swift
//  DealsApp
//
//  Created by renupunjabi on 7/3/23.
//

import Foundation


class HomeViewModel: ObservableObject {
    
    @Published var dealsData = [Deal]()
    let service = DealsService()
    
    // try to fetch deals, throw error if you can't
    // else, we have Deals in dealsData
    // tried not using do, catch but I get an error saying the call can throw
    // so I put it back in this do, catch statement for it to work
    func getDeals() {        
        do {
            self.dealsData = try service.fetchDeals()
        }
        catch {
            print(error)
        }
    } // end func
    
}
