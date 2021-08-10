//
//  EpisodeModel.swift
//  BreakingBad
//
//  Created by Joshua Curry on 8/9/21.
//

import Foundation

struct Episode: Identifiable, Decodable {
    var id: Int
    var title: String
    var season: Int
    var episode: Int
}
