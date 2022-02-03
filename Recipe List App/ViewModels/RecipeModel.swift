//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by SHASHANK SHEKHAR SHUKLA on 01/02/22.
//

import Foundation
class RecipeModel:ObservableObject
{
      @Published var recipes=[Recipe]()
      init()
      {
            self.recipes=DataService.getLocalData()
      }
}
