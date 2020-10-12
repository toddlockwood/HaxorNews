//
//  ContentView.swift
//  HaxorNews
//
//  Created by Arek Łapajski on 12/10/2020.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){
                post in
                Text(post.title)
            }
            .navigationTitle("HaxorNews")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
