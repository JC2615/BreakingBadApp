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
        NavigationView {
            List {
                ForEach(episodeViewModel.episodes){ episode in
                    VStack(alignment: .leading) {
                        Text("Season #\(episode.season)")
                            .font(.title2)
                        Text("Episode #\(episode.episode)")
                            .font(.body)
                        Text("\(episode.title)")
                            .font(.body)
                    }
                }
            }
            .navigationTitle("Episodes")
            .onAppear(){
                episodeViewModel.fetchEpisodes()
            }
        }
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeView()
    }
}
