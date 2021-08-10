//
//  MainView.swift
//  BreakingBad
//
//  Created by Joshua Curry on 8/9/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            CharacterView()
                .tabItem {
                    Label("Characters", systemImage: "person.3")
                }
            EpisodeView()
                .tabItem {
                    Label("Episodes", systemImage: "list.number")
                }
        }
        .accentColor(.pink)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
