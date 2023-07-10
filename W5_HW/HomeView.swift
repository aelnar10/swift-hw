//
//  ContentView.swift
//  DealsApp
//
//  Created by renupunjabi on 7/3/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var dvm = HomeViewModel()
    @State private var path = NavigationPath()
    
    var body: some View {
        
        NavigationStack(path: $path) {
            
            ZStack { // main zstack
                
                LinearGradient(gradient: Gradient(colors: [.pink, .cyan, .white, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .opacity(0.7)
                    .ignoresSafeArea()
                
                VStack { // featured deals vstack
                    
                    Text("Featured Deals")
                        .font((.system(size: 26)))
                        .frame(maxWidth: 360, alignment: .topLeading)
                    
                    // all the deals
                    List(dvm.dealsData) { deal in
                        
                        VStack { // info vstack
                            
                            // for image handling, used this: swiftanytime.com/blog/asyncimage-in-swiftui
                            AsyncImage(url: URL(string: deal.product.image)) { image in
                                      image
                                          .resizable()
                                          .aspectRatio(contentMode: .fill)
                                          
                                  } placeholder: {
                                      Color.gray
                                  }
                                  .frame(width: 160, height: 160)
                            
                            Text(deal.title)
                                .font(.system(size: 14))
                                .bold()
                                .frame(maxWidth: 360, alignment: .topLeading)
                            
                            Text("$\(deal.price)")
                                .font(.system(size: 12))
                                .frame(maxWidth: 360, alignment: .topLeading)
                            
                            NavigationLink("Learn More"){
                                ZStack {
                                    LinearGradient(gradient: Gradient(colors: [.pink, .cyan, .white, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                        .opacity(0.7)
                                        .ignoresSafeArea()
                                    ScrollView {
                                        VStack { // info about one product page
                                            
                                            AsyncImage(url: URL(string: deal.product.image)) { image in
                                                image
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                
                                            } placeholder: {
                                                Color.gray
                                            }
                                            .frame(width: 300, height: 300)
                                            
                                            Text(deal.title)
                                                .font(.system(size: 26))
                                                .bold()
                                                .frame(maxWidth: 360, alignment: .topLeading)
                                            
                                            HStack {
                                                Text("$\(deal.price)")
                                                    .font(.system(size: 20))
                                                Link("View Product", destination: URL(string: deal.url)!)
                                                    .font(.system(size: 16))
                                            }
                                            .frame(maxWidth: 360, alignment: .topLeading)
                                            
                                            Text(deal.product.availability)
                                                .italic()
                                                .bold()
                                                .foregroundColor(.pink)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: 360, alignment: .topLeading)
                                            
                                            Text(deal.product.description)
                                                .font(.system(size: 16))
                                                .frame(maxWidth: 360, alignment: .topLeading)
                                            
                                        } // end ingo one prod page
                                    } // end vstack scrollview
                                    .frame(maxWidth: 340, maxHeight: .infinity, alignment: .topLeading)
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 30, style: .continuous).fill(Color.white)
                                    )
                                     .overlay(
                                         RoundedRectangle(cornerRadius: 30)
                                             .stroke(.white)
                                     )
                                } // navlink zstack end
                            } // navlink end
                            
                        } // end info vstack
                        
                    } // end deals list, followed by list bg stuff
                    .background(.white)
                    .cornerRadius(30)
                    .frame(maxWidth: 370)
                    .scrollContentBackground(.hidden)
                    
                } // end featured deals vstack
                
            } // end main zstack
            .navigationTitle("Deals Tracker")
            
        } // end nav view
        .onAppear {
            dvm.getDeals()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
