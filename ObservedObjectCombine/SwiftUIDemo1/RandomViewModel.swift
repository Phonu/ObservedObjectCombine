//
//  RandomViewModel.swift
//  SwiftUIDemo1
//
//  Created by mac admin on 09/07/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import Foundation
import Combine

class RandomViewModel : ObservableObject{
    let random = RandomModel()
    
    var cancellable: AnyCancellable?
    
    @Published var valueAsString: String = ""
    
    
    init() {
        cancellable = random.$value
            .receive(on: DispatchQueue.main)
            .map {i in i.description }
            .assign(to: \.valueAsString , on: self)
//            .sink{ [weak self]
//                i in self?.valueAsString = i
//        }
        
    }
    
    func next() {
        random.next()
    }
}
