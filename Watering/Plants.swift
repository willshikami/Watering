//
//  Plants.swift
//  Watering
//
//  Created by Willard Shikami on 26/09/2020.
//

import SwiftUI

struct Plant : Identifiable {
    var id = UUID()
    var name: String
    var watering: String
    var location: String
    
//    var imageName: String{return name}
}


let testData = [
    Plant(name: "Money plant", watering: "today", location: "kitchen"),
    Plant(name: "Zebra succulent", watering: "3 days", location: "office"),
    Plant(name: "Rubber plant", watering: "3 days", location: "office"),
    Plant(name: "Palm tree", watering: "4 days", location: "balcony"),
    Plant(name: "Monstera", watering: "4 days", location: "baclcony"),
]
