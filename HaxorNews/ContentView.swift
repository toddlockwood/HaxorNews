//
//  ContentView.swift
//  HaxorNews
//
//  Created by Arek Łapajski on 12/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(posts){
                post in
                Text(post.title)
            }
            .navigationTitle("HaxorNews")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hi")
]
