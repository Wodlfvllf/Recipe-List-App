//
//  ContentView.swift
//  Recipe List App
//
//  Created by SHASHANK SHEKHAR SHUKLA on 01/02/22.
//

import SwiftUI

struct ContentView: View {
      
      
     @ObservedObject var model=RecipeModel()
      
    var body: some View {
      NavigationView {
         List(model.recipes){ r in
         NavigationLink(
               destination: RecipeDetailView(recipe:r),
                     
               label: {
                     
                    HStack(spacing: 24.0)
                    {
                        Image(r.image).resizable()
                        .scaledToFill().frame(width: 50,height:50,alignment:.center).clipped().cornerRadius(5)
                          
                        Text(r.name)
                                  
                    }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                  
                  })
                     
                }.navigationBarTitle("All Recipes")
             }
         }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
