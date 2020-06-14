//
//  DrinkView.swift
//  RestaurantMenuApp
//
//  Created by Harry T on 2020-06-13.
//  Copyright © 2020 Harry T. All rights reserved.
//

import SwiftUI

struct Drink: Identifiable {
    let id: Int
    let imagename: String
    let name: String
    let price: String
    let description: String
}

struct DrinkView: View {
    @State var drinkList = [
           Drink(id: 0, imagename: "coke", name: "Coke", price: "$2.25", description: "Coca Cola Drink"),
           Drink(id: 1, imagename: "fanta", name: "Fanta", price: "$2.25", description: "Fanta Drink"),
           Drink(id: 2, imagename: "pepsi", name: "Pepsi", price: "$2.25", description: "Pepsi Drink"),
           Drink(id: 3, imagename: "whisky", name: "Whisky", price: "$55", description: "Whisky Drink"),
           Drink(id: 4, imagename: "vodka", name: "Vodka", price: "$20", description: "Vodka drink"),
           Drink(id: 5, imagename: "champagne", name: "Champagne", price: "$45", description: "Champagne drink"),
           Drink(id: 6, imagename: "tequila", name: "Tequila", price: "$35", description: "Tequila drink")
       ]
    
    var body: some View {
        NavigationView {
        List(drinkList, id: \.name) {
         drink in
         NavigationLink(destination:DrinkDetailView (drink: drink)) {
         HStack {
                Image(drink.imagename).resizable().scaledToFit()
                Text(drink.name)
            }
       
            }.navigationBarTitle("Drink menu")
    }
        }
}
}

struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkView()
    }
}
