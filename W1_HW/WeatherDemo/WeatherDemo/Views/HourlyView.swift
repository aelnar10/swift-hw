//
//  HourlyView.swift
//  WeatherDemo
//
//  Created by allyza elnar on 6/10/23.
//

import SwiftUI

struct HourlyView: View {
    var body: some View {
        ZStack{
            RadialGradient(gradient: Gradient(colors: [.cyan, .gray]), center: .center, startRadius: 2, endRadius: 650)
                .cornerRadius(20)
                .opacity(0.5)
                .frame(width: 360, height: 140)
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(HourlyData.hourlyData){ hour in
                        VStack(spacing: 15){
                            Text(hour.time)
                                .foregroundColor(.white)
                                .bold()
                            Image(systemName: hour.image)
                                .foregroundColor(.orange)
                            Text(hour.temp)
                                .foregroundColor(.white)
                                .bold()
                        }
                        .padding(10)
                    }
                }
            }
            .frame(maxWidth: 350, alignment: .leading)
            .clipped()
        }
    }
}


struct HourlyView_Previews: PreviewProvider {
    static var previews: some View {
        HourlyView()
    }
}
