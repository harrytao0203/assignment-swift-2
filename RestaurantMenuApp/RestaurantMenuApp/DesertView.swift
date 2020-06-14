//
//  DesertView.swift
//  RestaurantMenuApp
//
//  Created by Harry T on 2020-06-13.
//  Copyright © 2020 Harry T. All rights reserved.
//

import SwiftUI
struct Dessert: Identifiable {
    let id: Int
    let imagename: String
    let name: String
    let price: String
    let description: String
}

struct DesertView: View {
    @State var dessertList = [
        Dessert(id: 0, imagename: "cake", name: "Cake", price: "$2.10", description: "Refreshing desert, a must for sweet lovers!"),
        Dessert(id: 1, imagename: "hotdog", name: "Hotdog", price: "$2.10", description: "Hot Dog with meatsauce"),
        Dessert(id: 2, imagename: "popcorn", name: "Popcorn", price: "$1.25", description: "Popcorn"),
        Dessert(id: 3, imagename: "yogurt", name: "Yogurt", price: "$1", description: "Yogurt"),
        Dessert(id: 4, imagename: "donut", name: "Donut", price: "$2", description: "Sweet Donut"),
        Dessert(id: 5, imagename: "muffin", name: "Muffin", price: "$1", description: "Muffin"),
        Dessert(id: 6, imagename: "icecream", name: "Ice Cream", price: "$2", description: "Ice cream"),
        Dessert(id: 7, imagename: "pizza", name: "Pizza", price: "$7.00", description: "Delicious Pizza, with selective toppings of your choice"),
        Dessert(id: 8, imagename: "pancake", name: "Pancake", price: "$5.34", description: "Delicious pancakes with fruit toppings to start your day nice and fresh!"),
        Dessert(id: 8, imagename: "macaron", name: "Macarons", price: "$4.34", description: "Delicious macarons to start your day nice and fresh!")
    ]
    
    var body: some View {
        NavigationView {
         List(dessertList, id: \.name) {
         dessert in
         NavigationLink(destination:DesertDetailView (dessert: dessert)) {
         HStack {
            Image(dessert.imagename).resizable().scaledToFit()
                 Text(dessert.name)
                   }
        }.navigationBarTitle("Dessert menu")
           }
            
       }
    }
}

struct DesertView_Previews: PreviewProvider {
    static var previews: some View {
        DesertView()
    }
}
