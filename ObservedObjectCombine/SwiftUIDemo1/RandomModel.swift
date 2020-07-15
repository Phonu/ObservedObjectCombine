//
//  RandomModel.swift
//  SwiftUIDemo1
//
//  Created by mac admin on 09/07/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import Foundation

class RandomModel {
   @Published private(set) var value: Int = 0
      
      func next() {
          value  = Int.random(in: 0...9)
      }
}
