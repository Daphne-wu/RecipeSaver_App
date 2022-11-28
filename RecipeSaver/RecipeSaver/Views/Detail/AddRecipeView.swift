//
//  AddRecipeView.swift
//  RecipeSaver
//
//  Created by Daphne Wu on 8/31/22.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name) //$ = binding string
                }
                Section(header: Text("Category")) {
                    
                }
                Section(header: Text("Description")) {
                    
                }
                Section(header: Text("Ingredients")) {
                    
                }
                Section(header: Text("Directions")) {
                    
                }



                
            }
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}
