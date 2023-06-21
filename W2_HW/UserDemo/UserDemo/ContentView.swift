//
//  ContentView.swift
//  UserDemo
//
//  Created by allyza elnar on 6/19/23.
//


import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = UserViewModel()
    
    var body: some View {
        
        NavigationView {
            
            VStack { // manually putting all 10 ids in here
                
                ZStack { // id 1
                    RadialGradient(gradient: Gradient(colors: [.cyan, .pink]), center: .center, startRadius: 2, endRadius: 650)
                                   .cornerRadius(20)
                                   .opacity(0.5)
                                   .frame(width: 320, height: 40)
                    NavigationLink(destination:
                        List(viewModel.users) { user in // print only those with this id
                            if(user.userId == 1){
                                VStack{
                                    HStack {
                                    Text("\(user.id)")
                                        .bold()
                                    Text(user.title)
                                        .font(.system(size: 14))
                                        .italic()
                                    }
                                    .frame(maxWidth: 315, alignment: .leading)
                                    Text(user.body)
                                        .frame(maxWidth: 315, alignment: .leading)
                                }
                            }
                        }
                    ) {
                        Text("User ID: 1")
                            .font(.system(size: 24))
                            .bold()
                            .frame(alignment: .center)
                            .padding(10)
                    }
                }
                ZStack { // id 2
                    RadialGradient(gradient: Gradient(colors: [.cyan, .pink]), center: .center, startRadius: 2, endRadius: 650)
                                   .cornerRadius(20)
                                   .opacity(0.5)
                                   .frame(width: 320, height: 40)
                    NavigationLink(destination:
                        List(viewModel.users) { user in // print only those with this id
                            if(user.userId == 2){
                                VStack{
                                    HStack {
                                    Text("\(user.id)")
                                        .bold()
                                    Text(user.title)
                                        .font(.system(size: 14))
                                        .italic()
                                    }
                                    .frame(maxWidth: 315, alignment: .leading)
                                    Text(user.body)
                                        .frame(maxWidth: 315, alignment: .leading)
                                }
                            }
                        }
                    ) {
                        Text("User ID: 2")
                            .font(.system(size: 24))
                            .bold()
                            .frame(alignment: .center)
                            .padding(10)
                    }
                }
                ZStack { // id 3
                    RadialGradient(gradient: Gradient(colors: [.cyan, .pink]), center: .center, startRadius: 2, endRadius: 650)
                                   .cornerRadius(20)
                                   .opacity(0.5)
                                   .frame(width: 320, height: 40)
                    NavigationLink(destination:
                        List(viewModel.users) { user in // print only those with this id
                            if(user.userId == 3){
                                VStack{
                                    HStack {
                                    Text("\(user.id)")
                                        .bold()
                                    Text(user.title)
                                        .font(.system(size: 14))
                                        .italic()
                                    }
                                    .frame(maxWidth: 315, alignment: .leading)
                                    Text(user.body)
                                        .frame(maxWidth: 315, alignment: .leading)
                                }
                            }
                        }
                    ) {
                        Text("User ID: 3")
                            .font(.system(size: 24))
                            .bold()
                            .frame(alignment: .center)
                            .padding(10)
                    }
                }
                ZStack { // id 4
                    RadialGradient(gradient: Gradient(colors: [.cyan, .pink]), center: .center, startRadius: 2, endRadius: 650)
                                   .cornerRadius(20)
                                   .opacity(0.5)
                                   .frame(width: 320, height: 40)
                    NavigationLink(destination:
                        List(viewModel.users) { user in // print only those with this id
                            if(user.userId == 4){
                                VStack{
                                    HStack {
                                    Text("\(user.id)")
                                        .bold()
                                    Text(user.title)
                                        .font(.system(size: 14))
                                        .italic()
                                    }
                                    .frame(maxWidth: 315, alignment: .leading)
                                    Text(user.body)
                                        .frame(maxWidth: 315, alignment: .leading)
                                }
                            }
                        }
                    ) {
                        Text("User ID: 4")
                            .font(.system(size: 24))
                            .bold()
                            .frame(alignment: .center)
                            .padding(10)
                    }
                }
                ZStack { // id 5
                    RadialGradient(gradient: Gradient(colors: [.cyan, .pink]), center: .center, startRadius: 2, endRadius: 650)
                                   .cornerRadius(20)
                                   .opacity(0.5)
                                   .frame(width: 320, height: 40)
                    NavigationLink(destination:
                        List(viewModel.users) { user in // print only those with this id
                            if(user.userId == 5){
                                VStack{
                                    HStack {
                                    Text("\(user.id)")
                                        .bold()
                                    Text(user.title)
                                        .font(.system(size: 14))
                                        .italic()
                                    }
                                    .frame(maxWidth: 315, alignment: .leading)
                                    Text(user.body)
                                        .frame(maxWidth: 315, alignment: .leading)
                                }
                            }
                        }
                    ) {
                        Text("User ID: 5")
                            .font(.system(size: 24))
                            .bold()
                            .frame(alignment: .center)
                            .padding(10)
                    }
                }
                ZStack { // id 6
                    RadialGradient(gradient: Gradient(colors: [.cyan, .pink]), center: .center, startRadius: 2, endRadius: 650)
                                   .cornerRadius(20)
                                   .opacity(0.5)
                                   .frame(width: 320, height: 40)
                    NavigationLink(destination:
                        List(viewModel.users) { user in // print only those with this id
                            if(user.userId == 6){
                                VStack{
                                    HStack {
                                    Text("\(user.id)")
                                        .bold()
                                    Text(user.title)
                                        .font(.system(size: 14))
                                        .italic()
                                    }
                                    .frame(maxWidth: 315, alignment: .leading)
                                    Text(user.body)
                                        .frame(maxWidth: 315, alignment: .leading)
                                }
                            }
                        }
                    ) {
                        Text("User ID: 6")
                            .font(.system(size: 24))
                            .bold()
                            .frame(alignment: .center)
                            .padding(10)
                    }
                }
                ZStack { // id 7
                    RadialGradient(gradient: Gradient(colors: [.cyan, .pink]), center: .center, startRadius: 2, endRadius: 650)
                                   .cornerRadius(20)
                                   .opacity(0.5)
                                   .frame(width: 320, height: 40)
                    NavigationLink(destination:
                        List(viewModel.users) { user in // print only those with this id
                            if(user.userId == 7){
                                VStack{
                                    HStack {
                                    Text("\(user.id)")
                                        .bold()
                                    Text(user.title)
                                        .font(.system(size: 14))
                                        .italic()
                                    }
                                    .frame(maxWidth: 315, alignment: .leading)
                                    Text(user.body)
                                        .frame(maxWidth: 315, alignment: .leading)
                                }
                            }
                        }
                    ) {
                        Text("User ID: 7")
                            .font(.system(size: 24))
                            .bold()
                            .frame(alignment: .center)
                            .padding(10)
                    }
                }
                ZStack { // id 8
                    RadialGradient(gradient: Gradient(colors: [.cyan, .pink]), center: .center, startRadius: 2, endRadius: 650)
                                   .cornerRadius(20)
                                   .opacity(0.5)
                                   .frame(width: 320, height: 40)
                    NavigationLink(destination:
                        List(viewModel.users) { user in // print only those with this id
                            if(user.userId == 8){
                                VStack{
                                    HStack {
                                    Text("\(user.id)")
                                        .bold()
                                    Text(user.title)
                                        .font(.system(size: 14))
                                        .italic()
                                    }
                                    .frame(maxWidth: 315, alignment: .leading)
                                    Text(user.body)
                                        .frame(maxWidth: 315, alignment: .leading)
                                }
                            }
                        }
                    ) {
                        Text("User ID: 8")
                            .font(.system(size: 24))
                            .bold()
                            .frame(alignment: .center)
                            .padding(10)
                    }
                }
                ZStack { // id 9
                    RadialGradient(gradient: Gradient(colors: [.cyan, .pink]), center: .center, startRadius: 2, endRadius: 650)
                                   .cornerRadius(20)
                                   .opacity(0.5)
                                   .frame(width: 320, height: 40)
                    NavigationLink(destination:
                        List(viewModel.users) { user in // print only those with this id
                            if(user.userId == 9){
                                VStack{
                                    HStack {
                                    Text("\(user.id)")
                                        .bold()
                                    Text(user.title)
                                        .font(.system(size: 14))
                                        .italic()
                                    }
                                    .frame(maxWidth: 315, alignment: .leading)
                                    Text(user.body)
                                        .frame(maxWidth: 315, alignment: .leading)
                                }
                            }
                        }
                    ) {
                        Text("User ID: 9")
                            .font(.system(size: 24))
                            .bold()
                            .frame(alignment: .center)
                            .padding(10)
                    }
                }
                ZStack { // id 10
                    RadialGradient(gradient: Gradient(colors: [.cyan, .pink]), center: .center, startRadius: 2, endRadius: 650)
                                   .cornerRadius(20)
                                   .opacity(0.5)
                                   .frame(width: 320, height: 40)
                    NavigationLink(destination:
                        List(viewModel.users) { user in // print only those with this id
                            if(user.userId == 10){
                                VStack{
                                    HStack {
                                    Text("\(user.id)")
                                        .bold()
                                    Text(user.title)
                                        .font(.system(size: 14))
                                        .italic()
                                    }
                                    .frame(maxWidth: 315, alignment: .leading)
                                    Text(user.body)
                                        .frame(maxWidth: 315, alignment: .leading)
                                }
                            }
                        }
                    ) {
                        Text("User ID: 10")
                            .font(.system(size: 24))
                            .bold()
                            .frame(alignment: .center)
                            .padding(10)
                    }
                }
                
            } // outer vstack
            .navigationTitle("User Posts")
            
        } // end navview
        .onAppear{
            viewModel.getUsers()
        }

    } // view end
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
