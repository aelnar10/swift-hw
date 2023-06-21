//
//  HeaderView.swift
//  WeatherDemo
//
//  Created by allyza elnar on 6/10/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(spacing: 10){
            Text("San Francisco")
                .font(.system(size: 30))
                .foregroundColor(.white)
                .bold()
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.orange)
            Text("47°F")
                .font(.system(size: 72))
                .foregroundColor(.white)
                .bold()
            Text("Clear")
                .font(.system(size: 24))
                .foregroundColor(.white)
            Text("H: 70°F L: 64°F")
                .font(.system(size: 16))
                .foregroundColor(.white)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
