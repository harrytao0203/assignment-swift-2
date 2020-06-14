//
//  ContentView.swift
//  RestaurantMenuApp
//
//  Created by Harry T on 2020-06-10.
//  Copyright © 2020 Harry T. All rights reserved.
//

import SwiftUI

struct Food: Identifiable {
    let id: Int
    let imagename: String
    let name: String
    let price: String
    let description: String
}

struct ContentView: View {
    @State var foodList = [
        Food(id: 0, imagename: "burger", name: "Burger&Fries", price: "$8.00", description: "Delicious Burger with sides french fries that will keep you full for hours!"),
        Food(id: 1, imagename: "steak", name: "Steak", price: "$40.00", description: "Delicious dinner meal that will end your day just right!"),
        Food(id: 2, imagename: "sushi", name: "Sushi", price: "$8.00", description: "Various kinds of sushi served together"),
        Food(id: 3, imagename: "noodle", name: "Noodle", price: "$7.00", description: "Delicious Noodle with hot soup"),
        Food(id: 4, imagename: "omelette", name: "Omelette", price: "$8.00", description: "Delicious omelette cooked by the best chef in town!"),
        Food(id: 5, imagename: "steakandcorn", name: "Steak&Corn", price: "$45.00", description: "A unique combo of well done steak with corn"),
        Food(id: 6, imagename: "pasta", name: "Spaghetti", price: "$7.00", description: "Delicious pasta with meatballs"),
        Food(id: 7, imagename: "sandwich", name: "Sandwich", price: "$8.00", description: "Delicious sandwich with various toppings"),
        Food(id: 8, imagename: "wings", name: "Chicken Wings", price: "$6.00", description: "Delicious barbeque wings"),
        Food(id: 9, imagename: "chicken", name: "Chicken", price: "$10.00", description: "Big chicken, a great way to fill up")
        
    ]
    
    var body: some View {
      NavigationView {
        VStack {
          HStack {
          NavigationLink (destination:DrinkView()) {
              Text("See Drink Menu")
                           }
          NavigationLink (destination:DesertView()) {
                Text("See Desert/Snacks Menu")
            }
 }
         List(foodList, id: \.name) {
          food in
           NavigationLink(destination:DetailView (food: food)) {

           HStack {
             Image(food.imagename).resizable().scaledToFit()
                    Text(food.name)
                }
            }.navigationBarTitle(Text("Main Course Menu"))
            }
                
        }
            Spacer()
     }
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
