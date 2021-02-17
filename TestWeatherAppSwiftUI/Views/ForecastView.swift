//
//  ФкешсдуМшуц.swift
//  TestWeatherAppSwiftUI
//
//  Created by Max Chesnikov on 17.02.2021.
//

import SwiftUI

struct ForecastView: View {
    let forecast: Forecast
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(forecast.name ?? "")
                    .foregroundColor(.black)
                    .font(.system(size: 18, weight: .semibold))
                HStack {
                    Text(forecast.forecastDescription ?? "")
                        .foregroundColor(.gray)
                        .font(.footnote)
                }
            }
            .padding()
            Spacer()
            Text(convertTemp(temp: Double(forecast.temperature!), from: .fahrenheit, to: .celsius))
                .foregroundColor(.black)
                .font(.system(size: 18, weight: .semibold))
        }
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView(forecast: Forecast.dummyData)
            .previewLayout(.sizeThatFits)
    }
}
