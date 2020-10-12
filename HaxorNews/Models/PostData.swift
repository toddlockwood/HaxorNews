//
//  PostData.swift
//  HaxorNews
//
//  Created by Arek Łapajski on 12/10/2020.
//

import Foundation

struct PostData: Decodable {
    let hits: [Post]
}

struct Post : Decodable, Identifiable{
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
