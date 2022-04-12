//
//  VolumeConvertor.swift
//  ConverterAPP
//
//  Created by Bogdan on 12.04.2022.
//

import Foundation

func volumeConverter(inputType: String, inputValue: Double, outputType: String) -> Double {
    var aux: Double
    switch inputType{
    case "mililiters":
        aux = inputValue / 1000
    case "cups":
        aux = inputValue / 4.167
    case "pints":
        aux = inputValue / 2.113
    case "gallons":
        aux = inputValue * 3.785
    default:
        aux = inputValue
    }
    switch outputType{
    case "mililiters":
        aux = aux * 1000
    case "cups":
        aux = aux * 4.167
    case "pints":
        aux = aux * 2.113
    case "gallons":
        aux = aux / 3.785
    default:
        aux = aux * 1
    }
    return aux
}
