//
//  DesertDetailView.swift
//  RestaurantMenuApp
//
//  Created by Harry T on 2020-06-13.
//  Copyright © 2020 Harry T. All rights reserved.
//

import SwiftUI

struct DesertDetailView: View {
    let dessert: Dessert
        var body: some View {
            VStack {
                Image(dessert.imagename).resizable().scaledToFit()
                Text(dessert.name).bold().padding()
          
                Text(dessert.description).italic().padding()
                Text(dessert.price)
            Spacer()
        }
    }
}

struct DesertDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DesertDetailView(
            dessert: Dessert(id: 0, imagename: "cake", name: "Cake", price: "$2.10", description: "Refreshing desert, a must for sweet lovers!"))
    }
}
