//
//  TimeConvertor.swift
//  ConverterAPP
//
//  Created by Bogdan on 12.04.2022.
//

import Foundation

func timeConverter(inputType: String, inputValue: Double, outputType: String) -> Double {
    var aux: Double
    switch inputType{
    case "seconds":
        aux = inputValue / 60
    case "hours":
        aux = inputValue * 60
    case "days":
        aux = inputValue * 1440
    default:
        aux = inputValue
    }
    switch outputType{
    case "seconds":
        aux = aux * 60
    case "hours":
        aux = aux / 60
    case "days":
        aux = aux / 1440
    default:
        aux = aux * 1
    }
    return aux
}
