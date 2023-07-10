//
//  ContentView.swift
//  StocksApp
//
//  Created by allyza elnar on 7/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var svm = StocksViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [.green, .cyan, .white, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .opacity(0.7)
                    .ignoresSafeArea()
                
                List(svm.stocksData) { stock in
                    VStack {
                        Text(stock.ticker)
                            .font(.system(size: 26))
                            .bold()
                            .foregroundColor(.teal)
                            .frame(maxWidth: 360, alignment: .topLeading)
                        Text(stock.name)
                            .font(.system(size: 20))
                            .italic()
                            .bold()
                            .foregroundColor(.green)
                            .frame(maxWidth: 360, alignment: .topLeading)
                        HStack { // holds name and currency
                            Text("Current price: \((stock.current_price_cents)/100000)")
                                .font(.system(size: 14))
                                .bold()
                                .frame(maxWidth: 360, alignment: .topLeading)
                            Text(stock.currency)
                                .foregroundColor(.mint)
                                .bold()
                        } // end hstack
                    } // end main vstack
                } // end svm list
                .background(.white)
                .cornerRadius(30)
                .frame(maxWidth: 370)
                .scrollContentBackground(.hidden)
            } // zstack end
            .navigationTitle("Stocksverse")
        } // navstack end
        .onAppear() {
            svm.getStocks()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
