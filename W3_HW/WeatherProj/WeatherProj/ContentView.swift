//
//  ContentView.swift
//  WeatherProj
//
//  Created by allyza elnar on 6/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchText = "" // for the search bar
    @StateObject var wvm = WeatherViewModel() // for the weather view
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.orange, .yellow, .cyan, .cyan]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea() // background of the app
                
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [.cyan, .cyan, .yellow, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .opacity(0.5)
                        .border(.black, width: 2)
                        .cornerRadius(5)
                        .frame(maxWidth: 360, maxHeight: 140, alignment: .topLeading)
                    
                    // for the weather :)
                    VStack {
                        
                        HStack { // city, temp
                            Text("City: \(wvm.locationWeather.response.name)")
                                .font(.system(size: 28))
                            Text("Temp: \(((wvm.locationWeather.response.main.temp-273.15) * (9/5) + 32))°")
                                .font(.system(size: 22))
                        }
                        
                        HStack { // highs, lows
                            Text("High: \(((wvm.locationWeather.response.main.temp_max-273.15) * (9/5) + 32))°")
                                .font(.system(size: 20))
                            Text("Low: \(((wvm.locationWeather.response.main.temp_min-273.15) * (9/5) + 32))°")
                                .font(.system(size: 20))
                        }
                        
                    }
                    .frame(maxWidth: 340, maxHeight: 120, alignment: .topLeading)
                    
                } // zstack 21 closure
                .frame(maxWidth: 360, maxHeight: .infinity, alignment: .topLeading)
                
            } // zstack 17 closure
            .navigationTitle(Text("Weather"))
        } // nav 16 closure
        .onAppear {
            wvm.getWeather("Seattle")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
