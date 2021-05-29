//
//  ContentView.swift
//  L12Chal
//
//  Created by Bill on 5/27/21.
//
/*

 Setup

 Create a new SwiftUI App Xcode project.

 You'll also need the JSON file that you created in the Module 2, Lesson 11 challenge.

 If you didn't complete that challenge, you can find a sample JSON file to use in the resources folder for Lesson 12.



 Challenge

 Add the JSON file to your Xcode project.

 Parse the JSON file and display the pizzas in a list on the user interface.

 The list should display the pizza names and toppings.


 COMPLETE & CONTINUE
 
 
 -------
 Lesson 13 Challenge:
 
 Setup

 You'll need the Xcode project that you created in the Module 2, Lesson 12 challenge.

 If you didn't complete that challenge, you can find an Xcode project to use in the resources folder for Lesson 13.

 Find images for your pizzas on a site like Pexels.com (you'll have to downsize these images) or simply Google Image search which is what I used.

 Alternatively, I've provided some sample images in the Lesson 13 resources folder.



 Challenge

 Add the image assets to your Xcode project.

 In your JSON file, add a new property to each pizza for its corresponding image asset name.

 Modify your model struct/class and UI to display the image along with the Pizza name/toppings.

 Your end result should look something like this:

------
 
 Lesson 14 Challenge:
 
 Setup

 You'll need the Xcode project that you used in the Module 2, Lesson 13 challenge.

 If you didn't complete that challenge, you can find an Xcode project to use in the resources folder for Lesson 14.



 Challenge

 Modify the view code in ContentView.swift to use a ScrollView and ForEach combo instead of a List.

 If you need a hint, scroll down!

 Your end result should look something like this:

 --------------------------
 
 Lesson 15 Challenge
 
 Setup

 You'll need the Xcode project that you used in the Module 2, Lesson 14 challenge.

 If you didn't complete that challenge, you can find an Xcode project to use in the resources folder for Lesson 15.



 Challenge

 Add a new SwiftUI View to your Xcode project and call it PizzaView.

 In the view code in ContentView.swift, move the pizza view code into PizzaView.

 Now you can simply create an instance of PizzaView inside the ForEach loop in ContentView.swift.

*/
import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(model.pizzas) { p in
                        
                        NavigationLink(
                            destination: PizzaView(pizza: p),
                            label: {
                                HStack {
                                    Image(p.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                                        .cornerRadius(5.0)
                                    
                                    VStack(alignment: .leading) {
                                        Text(p.name)
                                            .font(.title)
                                            .fontWeight(.bold)
                                    }
                                }
                                
                            })
                        
                    }
                }
            }.navigationBarTitle("All Pizzas")  // Here
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
