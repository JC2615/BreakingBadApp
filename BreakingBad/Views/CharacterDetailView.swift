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
        VStack {
            WebImage(url: character.img)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

//struct CharacterDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        CharacterDetailView()
//    }
//}
