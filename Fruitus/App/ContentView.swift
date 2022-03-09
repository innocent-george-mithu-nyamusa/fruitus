//
//  ContentView.swift
//  Fruitus
//
//  Created by Mithu's Macbook on 5/3/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        
        NavigationView {
            List {
                
                ForEach(fruits) {Item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: Item)){
                    FruitRowView(fruit: Item).padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        }//: NAVIGATION
    }
}

    // MARK: -PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData).previewDevice("iPhone 11 Pro")
    }
}
