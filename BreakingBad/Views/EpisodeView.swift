//
//  EpisodeView.swift
//  BreakingBad
//
//  Created by Joshua Curry on 8/9/21.
//

import SwiftUI

struct EpisodeView: View {
    @ObservedObject var episodeViewModel = EpisodeViewModel()
    
    init() {
        UINavigationBar.appearance().backgroundColor = .black
        UINavigationBar.appearance().barTintColor = .black
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(episodeViewModel.episodes){ episode in
                    VStack(alignment: .leading) {
                        Text("Season #\(episode.season)")
                            .font(.title2)
                            .foregroundColor(.white)
                        Text("Episode #\(episode.episode)")
                            .font(.body)
                            .foregroundColor(.white)
                        Text("\(episode.title)")
                            .font(.body)
                            .foregroundColor(.white)
                    }
                    //.background(Color.black)
                }
                .listRowBackground(Color.black)
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
