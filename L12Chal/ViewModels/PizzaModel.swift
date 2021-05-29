//
//  PizzaModel.swift
//  L12Chal
//
//  Created by Bill on 5/27/21.
//

import Foundation

class PizzaModel: ObservableObject {
    @Published var pizzas = [Pizza]()
    
    init() {
        
        let pathString = Bundle.main.path(forResource: "pizzas", ofType: "json")
        
        if let path = pathString {
            let url = URL(fileURLWithPath: path)
            
            do {
                
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    
                    let pizzaData = try decoder.decode([Pizza].self, from: data)
                    
                    for p in pizzaData {
                        p.id = UUID()
                    }
                    
                    self.pizzas = pizzaData
                }
                catch {
                    print(error)
                }
            }
            catch {
                print(error)
            }
        } else {
            print("Path problem")
        }
        
    }
}
