//
//  Recipe_ListApp.swift
//  Recipe List
//
//  Created by Bill Drayton on 30/5/2022.
//

import SwiftUI

@main
struct Recipe_ListApp: App {
    var body: some Scene {
        WindowGroup {
            RecipeTabView()
            //MARK: - Create instance of RecipeModel (ie. new recipe)
            .environmentObject(RecipeModel())
        }
    }
}
