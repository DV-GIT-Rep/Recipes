//
//  Recipe.swift
//  Recipe List
//
//  Created by Bill Drayton on 30/5/2022.
//

import Foundation
import SwiftUI

class Recipe: Identifiable, Decodable {
    
    var id: UUID?
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var servings: Int
    var ingredients: [String]
    var directions: [String]
    
}
