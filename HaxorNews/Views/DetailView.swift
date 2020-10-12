//
//  DetailView.swift
//  HaxorNews
//
//  Created by Arek Łapajski on 12/10/2020.
//

import SwiftUI
import WebKit


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://duckduckgo.com")
    }
}

