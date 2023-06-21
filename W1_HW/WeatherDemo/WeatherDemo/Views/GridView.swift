//
//  GridView.swift
//  WeatherDemo
//
//  Created by allyza elnar on 6/13/23.
//

import SwiftUI

struct GridView: View {

    let cols = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        
        LazyVGrid(columns: cols, spacing: 14){
            
            ForEach(GridData.gridData){ gd in
                ZStack{
                    RadialGradient(gradient: Gradient(colors: [.cyan, .gray]), center: .center, startRadius: 2, endRadius: 650)
                        .cornerRadius(20)
                        .opacity(0.5)
                    VStack(alignment: .leading){
                        HStack{
                            Image(systemName: gd.image)
                                .foregroundColor(.white)
                            Text(gd.cond)
                                .foregroundColor(.white)
                                .font(.system(size: 16))
                        }
                        Text(gd.num)
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .bold()
                    }
                    .frame(maxWidth: 130, maxHeight: 130, alignment: .topLeading)
                    .padding(10)
                }
                .frame(width: 160, height: 160)
                .clipped()
            }
        }
    }
    
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
