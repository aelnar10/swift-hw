//
//  ContentView.swift
//  WeatherDemo
//
//  Created by allyza elnar on 6/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.yellow, .blue, .cyan]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    HeaderView()
                    Spacer()
                    HourlyView()
                    Spacer()
                    DailyView()
                    Spacer()
                    GridView()
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
