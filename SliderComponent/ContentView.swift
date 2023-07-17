//
//  ContentView.swift
//  SliderComponent
//
//  Created by Alex on 18/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var value: Double = 0
    @State private var value2: Double = 50
    @State private var sliderValue: Double = 1
    @State private var step: Double = 10
    
    var body: some View {
        Form{

            // Premier slider
            Section {
                Text("Slider avec plage = \(value)")
                
                Slider(value: $value, in: 0...100).accentColor(.green)
            }
            .padding(.all)
            
            // Second slider
            Section {
                Text("Slider avec un pas de \(Int(step)) = \(Int(value2))")
                
                Slider(value: $value2, in: 0...100, step: step).accentColor(.red)
            }
            .padding(.all)
            
            // Troisieme slider
            Section {
                Text("Nombre de personnes : \(Int(sliderValue))")
                
                Slider(value: $sliderValue, in: 0...6, step: 1, onEditingChanged: {(sliderValue) in print(sliderValue)}, minimumValueLabel: Image(systemName: "person.fill"),maximumValueLabel: Image(systemName: "person.3.fill"), label: {
                    Text("Label")
                }).accentColor(.blue)
            }
            .padding(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
