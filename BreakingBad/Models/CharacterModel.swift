//
//  CharacterModel.swift
//  BreakingBad
//
//  Created by Joshua Curry on 8/9/21.
//

import Foundation

struct Character: Identifiable, Decodable {
    var id: Int
    var name: String
    var img: URL
    var status: String
    var nickname: String
}
