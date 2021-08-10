//
//  CharacterDetailView.swift
//  BreakingBad
//
//  Created by Joshua Curry on 8/10/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct CharacterDetailView: View {
    var character: Character
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                WebImage(url: character.img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text(character.name)
                    .font(.title)
                    .foregroundColor(.white)
                Text(character.nickname)
                    .font(.title2)
                    .foregroundColor(.secondary)
                Spacer()
                Text("Status")
                    .font(.title2)
                    .foregroundColor(.white)
                Text(character.status)
                    .font(.title3)
                    .foregroundColor(.secondary)
            }
        }
    }
}

//struct CharacterDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        CharacterDetailView()
//    }
//}
