//
//  ContentView.swift
//  Watering
//
//  Created by Willard Shikami on 26/09/2020.
//

import SwiftUI

struct ContentView: View {
    var plants: [Plant] = []
    var body: some View {
        NavigationView {
            List(plants) { plant in
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: .continuous)
                        .fill(Color.white)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    VStack() {
                            Image(systemName: "photo")
                                .frame(width: 150.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0)
                            VStack(alignment: .leading) {
                                Text(plant.name)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.leading)
                                    .padding(.bottom)
                                VStack(alignment: .leading) {
                                    
                                    Text("Next watering").foregroundColor(.secondary)
                                    
                                    Text(plant.watering)
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                }
                            }
                            .padding(.leading, 30.0)
                    }
                }
                .frame(width: 380, height: 250, alignment: .leading)
            }
        }.navigationBarTitle(Text("Plant"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(plants: testData)
    }
}
