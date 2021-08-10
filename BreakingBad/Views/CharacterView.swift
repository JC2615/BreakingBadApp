//
//  CharacterView.swift
//  BreakingBad
//
//  Created by Joshua Curry on 8/9/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct CharacterView: View {
    @ObservedObject var characterViewModel = CharacterViewModel()
    var columns = [
        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 15),
        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 15),
        GridItem(.flexible(minimum: 100, maximum: 200), spacing: 15)
    ]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, content: {
                    ForEach(characterViewModel.characters){ character in
                        NavigationLink(
                            destination: CharacterDetailView(character: character),
                            label: {
                                VStack {
                                    WebImage(url: character.img)
                                        .resizable()
                                        .indicator(.activity)
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(5.0)
                                    Text(character.nickname)
                                }
                            })
                    }
                })
                .onAppear(){
                    characterViewModel.fetchCharacters()
                }
            }
            .padding()
            .navigationTitle("Characters")
        }
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}
