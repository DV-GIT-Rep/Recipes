//
//  RecipeModel.swift
//  Recipe List
//
//  Created by Bill Drayton on 30/5/2022.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        //Retrieve the local data using the getLocalData function in the DataService class
        self.recipes = DataService.getLocalData()
        
    }
}
