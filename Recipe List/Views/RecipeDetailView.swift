//
//  RecipeDetailView.swift
//  Recipe List
//
//  Created by Bill Drayton on 31/5/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
//            //MARK: Recipe Name
//            Text(recipe.name)
//                .font(.title)
//                .bold()
//                .padding(.leading)
//                .padding(.bottom, 5)
                    
        ScrollView() {
            
            VStack(alignment: .leading) {
            
            //MARK: Recipe Image
            Image(recipe.image)
                .resizable()
                .scaledToFill()
                .padding(.bottom, 9)
            
            //MARK: Ingredients
            VStack(alignment: .leading) {
                Text("Ingredients")
                    .font(.headline)
                    .padding(.bottom, 1)
                
                ForEach (recipe.ingredients, id: \.self) { item in
                    HStack(alignment: .top) {
                        Text("•  ")
                        Text(item)
                    }
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 5)
            
            //MARK: Directions
            VStack(alignment: .leading) {
                Text("Directions")
                    .font(.headline)
                    .padding(.bottom, 1)
                
//                ForEach(recipe.directions, id: )
                
                ForEach (0..<recipe.directions.count, id: \.self) { index in
                    HStack(alignment: .top) {
                        Text ("\(String(index + 1)) ")
                    Text(recipe.directions[index])
                    }
                    .padding(.bottom, 0.5)
                }
            }
            .padding(.horizontal)
            .padding(.bottom)

//            Text(recipe.description)
//            Text(recipe.prepTime)
            }
        }
        .navigationTitle(recipe.name)
    }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        //Create a dummy recipe then pass it into the detail view so we can see a preview
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
