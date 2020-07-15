//
//  ContentView.swift
//  SwiftUIDemo1
//
//  Created by mac admin on 25/06/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    
//     @State var randomValue: Int = 0
    @ObservedObject var randomValueModel = RandomViewModel()
    

    var body: some View {
        VStack {
            Spacer()
//            Text(randomValue.description)
            Text(randomValueModel.valueAsString)
            Spacer()
             Button("next", action : next)
            Spacer()
        }
    }
    
    func next() {
//        self.randomValue = Int.random(in: 1...9)
        randomValueModel.next()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




//
//class DataSource: ObservableObject {
//    let willChange = PassthroughSubject<Void, Never>()
//    var pictures = [String]()
//
//    init() {
//        let fm = FileManager.default
//        let path = "/Users/macadmin/Desktop/SwiftUIDemo1/SwiftUIDemo1/Pictures"
//           if let items = try? fm.contentsOfDirectory(atPath: path) {
//                print(items)
//                for item in items {
//                    if item.hasPrefix("images") {
//                        pictures.append(item)
//                    }
//                }
//            }
//        willChange.send()
//    }
//}
//struct DetailsView:View {
//    var selectedImage: String
//
//    var body: some View {
//        let img = UIImage(named: selectedImage)!
//        return Image(uiImage: img)
//    }
//}
//
//
//struct ContentView: View {
//
//@ObservedObject var dataSource = DataSource()
//
//    var body: some View {
//        NavigationView {
//            List(dataSource.pictures,id: \.self) { element in
//               NavigationLink(
//               destination: DetailsView(selectedImage: element)) {
//                        Text(element)
//                    }
//
//
////                Text(element)
//            }.navigationBarTitle(Text("Picture View"))
//        }
//
//
//    }
//}

