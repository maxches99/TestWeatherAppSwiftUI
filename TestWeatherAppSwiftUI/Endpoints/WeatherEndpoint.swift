//
//  WeatherEndpoint.swift
//  TestWeatherAppSwiftUI
//
//  Created by Max Chesnikov on 17.02.2021.
//

import Foundation
import CoreLocation

protocol APIBuilder {
    var urlRequest: URLRequest { get }
    var baseUrl: URL { get }
    var path: String { get }
}

enum WeatherAPI {
    case getWeather(CLLocationDegrees, CLLocationDegrees)
}

extension WeatherAPI: APIBuilder {
    var urlRequest: URLRequest {
        return URLRequest(url: URL( string: baseUrl.appendingPathComponent(path).absoluteString.removingPercentEncoding! + appendingString)!)
    }
    
    var baseUrl: URL {
        switch self {
        case .getWeather(_, _):
            return URL(string: "https://api.lil.software")!
        }
    }
    
    var path: String {
        return "/weather?"
    }
    
    var appendingString: String {
        switch self {
        case .getWeather(let latitude, let longitude):
            return "latitude=\(latitude)&longitude=\(longitude)"
        }
    }
    
    
}
