//
//  ContentView.swift
//  temperature-converter
//
//  Created by Pamela Ianovalli on 10/09/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let temperatureUnits: [TemperatureUnit] = TemperatureUnit.allCases
    
    @State private var temperatureValue = ""
    @State private var unitInput = 0
    @State private var unitOutput = 0
    
    
    private var result: Double {
        let input = temperatureUnits[unitInput]
        let output = temperatureUnits[unitOutput]
        
        guard let value = Double(temperatureValue),
              value != 0 else {
         return 0.0
        }
        
        switch (input, output) {
        case (.celsius, .fahrenheit):
            return (value * 1.8) + 32
        case (.fahrenheit, .celsius):
            return (value - 32) / 1.8
        case (.fahrenheit, .kelvin):
            return (value - 32) * 1.8 + 273
        case (.celsius, .kelvin):
            return value + 273
        case (.kelvin, .kelvin):
            return value
        case (.fahrenheit, .fahrenheit):
            return value
        case (.celsius, .celsius):
            return value
        case (.kelvin, .celsius):
            return value - 273
        case (.kelvin, .fahrenheit):
            return (value - 273) * 1.8 + 32
        }
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 50) {
                HStack(spacing: 10){
                    TextField("Enter temperature", text: $temperatureValue)
                        .keyboardType(.decimalPad)
                        .frame(width: 150, alignment: .center)
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.init(red: 80/100, green: 80/100, blue: 80/100), lineWidth: 1.5))
                    
                    
                    Text("\(result, specifier: "%.1f")")
                        .frame(width: 150, alignment: .center)
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.init(red: 80/100, green: 80/100, blue: 80/100), lineWidth: 1.5)
                    )
                }
                
                Picker("Temperature Units", selection: $unitInput) {
                    ForEach(0 ..< temperatureUnits.count) {
                        Text(self.temperatureUnits[$0].rawValue)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .clipped()
                .frame(minWidth: 0, maxWidth: (UIScreen.main.bounds.size.width) - 20, maxHeight: 100)
                
                Picker("Convert to", selection: $unitOutput) {
                    ForEach(0 ..< temperatureUnits.count) {
                        Text(self.temperatureUnits[$0].rawValue)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .clipped()
                .frame(minWidth: 0, maxWidth: (UIScreen.main.bounds.size.width) - 20, maxHeight: 100)
                
            }
                
            .padding(EdgeInsets(top: 50, leading: 20, bottom: 100, trailing: 20))
            .navigationBarTitle(Text("Temperature convert"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
