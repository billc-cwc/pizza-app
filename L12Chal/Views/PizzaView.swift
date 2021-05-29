//
//  PizzaView.swift
//  L12Chal
//
//  Created by Bill on 5/28/21.
//

import SwiftUI

struct PizzaView: View {
    
    var pizza:Pizza
    
    var body: some View {
        
//        Text(pizza.name)
        VStack {
            Image(pizza.image)
                .resizable()
                .scaledToFit()
//                .scaledToFill()
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(5.0)
            
            VStack(alignment: .leading) {
                Text(pizza.name)
                    .font(.title)
                    .fontWeight(.bold)
//                HStack {
                    ForEach(pizza.toppings, id: \.self) { t in
                        Text(t)
                    }
//                }
            }
        }
    }
}

struct PizzaView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = PizzaModel()
        
        PizzaView(pizza: model.pizzas[0])
    }
}
