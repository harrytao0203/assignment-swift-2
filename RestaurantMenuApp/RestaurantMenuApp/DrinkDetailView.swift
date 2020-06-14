//
//  DrinkDetailView.swift
//  RestaurantMenuApp
//
//  Created by Harry T on 2020-06-13.
//  Copyright © 2020 Harry T. All rights reserved.
//

import SwiftUI

struct DrinkDetailView: View {
    let drink: Drink
        var body: some View {
            VStack {
                Image(drink.imagename).resizable().scaledToFit()
                Text(drink.name).bold().padding()
          
                Text(drink.description).italic().padding()
                Text(drink.price)
            Spacer()
        }
    }
}

struct DrinkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetailView(
        drink: Drink(id: 0, imagename: "coke", name: "Coke", price: "$2.25", description: "Coca Cola Drink")
        )
    }
}
