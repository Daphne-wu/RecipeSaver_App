//
//  NewRecipeView.swift
//  RecipeSaver
//
//  Created by Daphne Wu on 8/23/22.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("New Recipe").navigationTitle("New Recipe")
        }.navigationViewStyle(.stack)
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
