//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by SHASHANK SHEKHAR SHUKLA on 01/02/22.
//

import SwiftUI

struct RecipeDetailView: View {
      var recipe:Recipe
    var body: some View {
        ScrollView
          {
                Text(recipe.name)
                      .font(.title)
                      .fontWeight(.heavy)
                      .foregroundColor(Color.red)
                      .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Image(recipe.image).resizable()
                .scaledToFill()
                VStack(alignment: .leading)
                {
                      Text("Ingredients").font(.headline).fontWeight(.heavy).foregroundColor(Color.red).multilineTextAlignment(.center).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                      
                      ForEach(recipe.ingredients,id:\.self)
                      {
                            item in
                            Text("->  "+item)
                                  .fontWeight(.bold)
                                  .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing], 1.0/*@END_MENU_TOKEN@*/)
                      }
                }
                
              Divider()
                VStack(alignment: .leading)
                {
                      Text("Directions").font(.headline).fontWeight(.heavy).foregroundColor(Color.red).multilineTextAlignment(.center).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                      
                      ForEach(0..<recipe.directions.count,id:\.self)
                      {
                            index in
                            Text(String(index+1)+".) "+recipe.directions[index])
                                  .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                      }
                      
                }
           
          }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
          let model=RecipeModel()
          RecipeDetailView(recipe: model.recipes[0])
    }
}
