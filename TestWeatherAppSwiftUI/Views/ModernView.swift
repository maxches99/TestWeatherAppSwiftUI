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
            ForEach(forecasts) { forecast in
                NewForecastView(forecast: forecast)
            }
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
