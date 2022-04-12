//
//  LengthConvertor.swift
//  ConverterAPP
//
//  Created by Bogdan on 12.04.2022.
//

import Foundation

func lengthConverter(inputType: String, inputValue: Double, outputType: String) -> Double {
    var aux: Double
    switch inputType{
    case "kilometers":
        aux = inputValue * 1000
    case "feet":
        aux = inputValue / 3.281
    case "yards":
        aux = inputValue / 1.094
    case "miles":
        aux = inputValue * 1609
    default:
        aux = inputValue
    }
    switch outputType{
    case "kilometers":
        aux = aux / 1000
    case "feet":
        aux = aux * 3.281
    case "yards":
        aux = aux * 1.094
    case "miles":
        aux = aux / 1609
    default:
        aux = aux * 1
    }
    return aux
}
