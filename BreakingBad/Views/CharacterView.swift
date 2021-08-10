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
                        VStack {
                            WebImage(url: character.img)
                                .resizable()
                                .indicator(.activity)
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 200)
                            Text(character.name)
                        }
                    }
                })
                .onAppear(){
                    characterViewModel.fetchCharacters()
                }
            }
            .navigationTitle("Characters")
        }
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}
