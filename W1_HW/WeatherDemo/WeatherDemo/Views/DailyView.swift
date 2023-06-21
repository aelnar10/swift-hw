//
//  DailyView.swift
//  WeatherDemo
//
//  Created by allyza elnar on 6/10/23.
//

import SwiftUI

struct DailyView: View {
    var body: some View {
        ZStack{
            RadialGradient(gradient: Gradient(colors: [.cyan, .gray]), center: .center, startRadius: 2, endRadius: 650)
                .cornerRadius(20)
                .opacity(0.5)
                .frame(width: 360, height: 400)
            VStack{
                ForEach(DailyData.dailyData){ wd in
                    HStack{
                        Text(wd.day)
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: wd.image)
                            .foregroundColor(.orange)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        HStack{
                            Text(wd.high)
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                            Spacer()
                            Text(wd.low)
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding(10)
                }
            }
            .frame(width: 360, height: 400)
            .clipped()
        }
    }
}

struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        DailyView()
    }
}
