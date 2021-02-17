//
//  HomeView.swift
//  TestWeatherAppSwiftUI
//
//  Created by Max Chesnikov on 17.02.2021.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = WeatherViewModelImpl(service: WeatherServiceImpl())
    
    var body: some View {
        Group {
            switch viewModel.state {
            case .failed(let error):
                ErrorView(error: error, handler: viewModel.getForecasts)
            case .success(let articles):
                NavigationView {
                    List(articles) { item in
                        ForecastView(forecast: item)
                    }
                    .navigationTitle(Text("Эта ебаная погода"))
                }
            default:
                ProgressiveView(state: viewModel.state)
            }
        }.onAppear(perform: {
            viewModel.getForecasts()
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

