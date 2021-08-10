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
    var season: String
    var episode: String
    
    enum CodingKeys: String, CodingKey {
        case id = "episode_id"
        case title
        case season
        case episode
    }
}
