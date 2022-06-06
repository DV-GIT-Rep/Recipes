//
//  DataService.swift
//  Recipe List
//
//  Created by Bill Drayton on 30/5/2022.
//

import Foundation

class DataService: ObservableObject {
    
    static func getLocalData() -> [Recipe] {
        
        //Parse local JSON file
        
        //Get the URL path to the JSON file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        //Verify pathString is not equal to nil, else return an empty recipe
        guard pathString != nil else {
            return [Recipe]()
        }
        
        //Create a URL object (assume data != nil as pathString returned a value!!!
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            //Create a Data object
            let data = try Data(contentsOf: url)
            
            //Decode the Data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                //Add the unique IDs
                for rec in recipeData {
                    rec.id = UUID()
                }
                
                //Return the recipes from the JSON data
                return recipeData
                
            } catch {
                //Error parsing JSON
                print("Error parsing JSON data: \(error)")
            }
            
        } catch {
            //Error retrieving data
            print("Error retrieving Data: \(error)")
        }
        
        //Only gets here if there is an error! Return empty recipe array!
        return [Recipe]()
    }
}
