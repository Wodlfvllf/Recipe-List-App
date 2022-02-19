//
//  RecipeFeaturedView.swift
//  Recipe List App
//
//  Created by SHASHANK SHEKHAR SHUKLA on 06/02/22.
//

import SwiftUI

struct RecipeFeaturedView: View {
      @EnvironmentObject var model:RecipeModel
      var body: some View {
        VStack
            {
                  Text("Featured Recipes").fontWeight(.bold).padding().font(.largeTitle)
                  
            GeometryReader { geo in
                  TabView
                  {
                        ForEach(0..<model.recipes.count)
                        {
                              index in
                              if (model.recipes[index].featured==true)
                              {
                                    ZStack {
                                          Rectangle().foregroundColor(.white)
                                          VStack(spacing:0)
                                          {
                                                Image(model.recipes[index].image).resizable().clipped()
                                                Text(model.recipes[index].name)
                                                      .foregroundColor(Color.red)
                                                      .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                                      
                                          }
                                          
                                          
                                    }.frame(width: geo.size.width-40, height: geo.size.height-120, alignment: .center).cornerRadius(15).shadow(color:.black,radius: 30)                              }
                        }
                  }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic)).indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
                  VStack(alignment: .leading,spacing: 10)
                  {
                        Text("Preparation Time")
                        Text("1 hour")
                        Text("Highlights")
                  }.padding()
                  
            }.padding([.leading,.bottom])
            
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
          RecipeFeaturedView().environmentObject(RecipeModel())
    }
}
