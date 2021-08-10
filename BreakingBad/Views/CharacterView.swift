//
//  CharacterView.swift
//  BreakingBad
//
//  Created by Joshua Curry on 8/9/21.
//

import SwiftUI

struct CharacterView: View {
    @ObservedObject var characterViewModel = CharacterViewModel()
    var body: some View {
        List {
            ForEach(characterViewModel.characters){ character in
                Text("\(character.id)")
            }
        }
        .onAppear(){
            characterViewModel.fetchCharacters()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}
