//
//  CharacterModel.swift
//  BreakingBad
//
//  Created by Joshua Curry on 8/9/21.
//

import Foundation

struct Character: Decodable, Identifiable {
    var id: Int
    var name: String
    var img: URL
    var status: String
    var nickname: String
    
    enum CodingKeys: String, CodingKey {
        case id = "char_id"
        case name
        case img
        case status
        case nickname
    }
}
