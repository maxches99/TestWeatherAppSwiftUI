//
//  ModernView.swift
//  TestWeatherAppSwiftUI
//
//  Created by Max Chesnikov on 18.02.2021.
//

import SwiftUI

struct ModernView: View {
    
    var forecasts: [Forecast]
    
    var body: some View {
        NavigationView {
        TabView {
            NewForecastView(forecast: forecasts[0])
            NewForecastView(forecast: forecasts[1])
            NewForecastView(forecast: forecasts[2])
            NewForecastView(forecast: forecasts[3])
            NewForecastView(forecast: forecasts[4])
            NewForecastView(forecast: forecasts[5])
            NewForecastView(forecast: forecasts[6])
            NewForecastView(forecast: forecasts[7])
            NewForecastView(forecast: forecasts[8])
            NewForecastView(forecast: forecasts[9])
                }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .navigationTitle("Эта блядская погода")
        }

    }
}

struct ModernView_Previews: PreviewProvider {
    static var previews: some View {
        ModernView(forecasts: [])
    }
}
