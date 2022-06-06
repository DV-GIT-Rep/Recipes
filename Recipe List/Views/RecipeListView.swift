//
//  ContentView.swift
//  Recipe List
//
//  Created by Bill Drayton on 30/5/2022.
//

import SwiftUI

struct RecipeListView: View {
    
    //Reference the View Model
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView {
            List(model.recipes) { rec in
                
//                let model = RecipeModel()     //Don't see point of this - deleted!
                
                NavigationLink(
                    destination: RecipeDetailView(recipe: rec),
                    label: {
                        //MARK: Row item
                        HStack(spacing: 18.0) {
                            Image(rec.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            Text(rec.name)
                        }
                    })
            }
            .navigationTitle("Recipes")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
