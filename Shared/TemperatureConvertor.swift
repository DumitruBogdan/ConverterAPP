//
//  TemperatureConvertor.swift
//  ConverterAPP
//
//  Created by Bogdan on 12.04.2022.
//

import Foundation

func temperatureConverter(inputType: String, inputValue: Double, outputType: String) -> Double {
    var aux: Double
    if inputType == outputType{
        return inputValue
    }
    switch inputType{
    case "Fahrenheit":
        aux = (inputValue - 32) * (5/9)
    case "Kelvin":
        aux = inputValue - 273.15
    default:
        aux = inputValue
    }
    switch outputType{
    case "Fahrenheit":
        aux = (aux * (9/5)) + 32
    case "Kelvin":
        aux = aux + 273.15
    default:
        aux = aux * 1
    }
    return aux
}
