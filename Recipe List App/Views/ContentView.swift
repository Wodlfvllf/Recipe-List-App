//
//  ContentView.swift
//  Recipe List App
//
//  Created by SHASHANK SHEKHAR SHUKLA on 01/02/22.
//

import SwiftUI

struct ContentView: View {
      
      
      @EnvironmentObject var model:RecipeModel
      
      var body: some View {
            
            NavigationView {
                  VStack(alignment:.leading)
                  {
                        Text("All Recipes").fontWeight(.bold).font(.largeTitle)
                        ScrollView {
                              LazyVStack(alignment:.leading) {
                                    ForEach(model.recipes)
                                    { r in
                                          NavigationLink(
                                                destination: RecipeDetailView(recipe:r),
                                                label: {
                                                      
                                                      // MARK: Row item
                                                      HStack(spacing: 20.0) {
                                                            Image(r.image)
                                                                  .resizable()
                                                                  .scaledToFill()
                                                                  .frame(width: 50, height: 50, alignment: .center)
                                                                  .clipped()
                                                                  .cornerRadius(5)
                                                            Text(r.name)
                                                      }
                                                })
                                    }
                              }
                        }
                  }.navigationBarHidden(true).padding()
            }
      }
}

struct ContentView_Previews: PreviewProvider {
      static var previews: some View {
            ContentView().environmentObject(RecipeModel())
      }
}
