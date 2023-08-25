//
//  ContentView.swift
//  DemoApp
//
//  Created by allyza elnar on 8/21/23.
//

import SwiftUI

struct ContentView: View {
    
    
    typealias UIViewControllerType = MyViewController
    
    @StateObject var view_model = ViewModel()
    @State var showData = false
    @State var isPresented = false
    
    
    var body: some View {
        VStack {
            
            Button("View Controller Page") {
                        isPresented = true
            }
             .sheet(isPresented: $isPresented) {
                MyView()
                     .ignoresSafeArea()

            }
            
            Toggle("Show cats: ", isOn: $showData)
            
            if(showData) {
                List(view_model.data) { cat in
                    Text("Name: \(cat.name), Breed: \(cat.breed), Address: \(cat.address)")
                }
            }
            
        }
        .onAppear {
            view_model.getData()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
