//
//  ContentView.swift
//  Shared
//
//  Created by Bogdan on 12.04.2022.
//

import SwiftUI

struct ContentView: View {
    var units = ["Temperature", "Length", "Time", "Volume"]
    var temperatureUnits = ["Celsius", "Fahrenheit", "Kelvin"]
    var lengthUnits = ["meters", "kilometers", "feet", "yards", "miles"]
    var timeUnits = ["seconds", "minutes", "hours", "days"]
    var volumeUnits = ["milliliters", "liters", "cups", "pints", "gallons"]
    @State var unitSelected = "Length"
    @State var inputUnit = "Meters"
    @State var outputUnit = "Kilometers"
    @State var inputValue = 0.0
    @State var outputValue = 2.0
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Picker("Select the desired unit", selection: $unitSelected){
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                }
                HStack{
                    TextField("The value is: ", value:$inputValue, format: .number)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                    TextField("The output is: ", value:$outputValue, format: .number)
                        .multilineTextAlignment(.center)
                        .disabled(true)
                }
                
                Section{
                    Picker("From", selection:$inputUnit){
                        switch unitSelected {
                        case "Temperature":
                            ForEach(temperatureUnits, id: \.self){
                                Text($0)
                            }
                        case "Time":
                            ForEach(timeUnits, id: \.self){
                                Text($0)
                            }
                        case "Volume":
                            ForEach(volumeUnits, id: \.self){
                                Text($0)
                            }
                        default:
                            ForEach( lengthUnits, id: \.self){
                                Text($0)
                            }
                        }
                    }
                }
                Section{
                    Picker("To", selection:$outputUnit){
                        switch unitSelected {
                        case "Temperature":
                            ForEach(temperatureUnits, id: \.self){
                                Text($0)
                            }
                        case "Time":
                            ForEach(timeUnits, id: \.self){
                                Text($0)
                            }
                        case "Volume":
                            ForEach(volumeUnits, id: \.self){
                                Text($0)
                            }
                        default:
                            ForEach( lengthUnits, id: \.self){
                                Text($0)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Converter")
        }
        .onChange(of: self.inputValue) { newValue in
            outputValue = lengthConverter(inputType: inputUnit, inputValue: newValue, outputType: outputUnit)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
