//
//  Pizza.swift
//  L12Chal
//
//  Created by Bill on 5/27/21.
//

import Foundation

class Pizza:Identifiable, Decodable {
    
    var id:UUID?
    var name = ""
    var image = ""
    var toppings = [String]()
}
