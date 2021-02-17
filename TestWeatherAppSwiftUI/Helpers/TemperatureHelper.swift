//
//  TemperatureHelper.swift
//  TestWeatherAppSwiftUI
//
//  Created by Max Chesnikov on 18.02.2021.
//

import Foundation

func convertTemp(temp: Double, from inputTempType: UnitTemperature,
                 to outputTempType: UnitTemperature) -> String {
    let mf = MeasurementFormatter()
    mf.numberFormatter.maximumFractionDigits = 0
    mf.unitOptions = .providedUnit
    let input = Measurement(value: temp, unit: inputTempType)
    let output = input.converted(to: outputTempType)
    return mf.string(from: output)
}
