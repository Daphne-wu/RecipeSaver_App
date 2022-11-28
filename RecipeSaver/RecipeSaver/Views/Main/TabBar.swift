//
//  TabBar.swift
//  RecipeSaver
//
//  Created by Daphne Wu on 8/23/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView().tabItem { //text and icon put together
                Label("Home", systemImage: "house")
            }
            
            CategoriesView().tabItem { //text and icon put together
                Label("Categories", systemImage: "square.fill.text.grid.1x2")
            }
            
            NewRecipeView().tabItem { //text and icon put together
                Label("New", systemImage: "plus")
            }
            
            FavoritesView().tabItem { //text and icon put together
                Label("Favorites", systemImage: "heart")
            }
            
            SettingsView().tabItem { //text and icon put together
                Label("Settings", systemImage: "gear")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
