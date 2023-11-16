//
//  ContentView.swift
//  JockesAppSwiftUI
//
//  Created by Jinu on 16/11/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var jokesVM = JockesViewModel()
    var body: some View {
        NavigationView{
            List(jokesVM.jokes){element in
                Text(element.joke)
            }.toolbar{
                Button(action: {
                    addJokes()
                }, label: {
                    Text("Get new joke")
                })
            }
            .navigationTitle("Jokes App")
            
        }
    }
    func addJokes(){
        jokesVM.getJokes(count: 1)
    }
}

#Preview {
    ContentView()
}
