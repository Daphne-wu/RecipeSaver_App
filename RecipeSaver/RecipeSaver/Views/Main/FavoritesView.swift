//
//  FavoritesView.swift
//  RecipeSaver
//
//  Created by Daphne Wu on 8/23/22.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("No favorites saved").padding().navigationTitle("Favorites")
        }.navigationViewStyle(.stack)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
