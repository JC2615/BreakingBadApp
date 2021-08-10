//
//  EpisodeView.swift
//  BreakingBad
//
//  Created by Joshua Curry on 8/9/21.
//

import SwiftUI

struct EpisodeView: View {
    @ObservedObject var episodeViewModel = EpisodeViewModel()
    var body: some View {
        List {
            ForEach(episodeViewModel.episodes){ episode in
                Text(episode.title)
            }
        }
        .onAppear(){
            episodeViewModel.fetchEpisodes()
        }
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeView()
    }
}
