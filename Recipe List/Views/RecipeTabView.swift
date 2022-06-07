//
//  RecipeTabView.swift
//  Recipe List
//
//  Created by Bill Drayton on 6/6/2022.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView {
            
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
//        .frame(height: 880)
//        .tabViewStyle(.page)  //Scrolls left/right rather than icons @ bottom of screen
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
