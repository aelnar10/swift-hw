//
//  mockData.swift
//  WeatherDemo
//
//  Created by allyza elnar on 6/10/23.
//

import Foundation

struct HourlyData: Identifiable {
    var id = UUID()
    
    let image: String
    let temp: String
    let time: String
    
    static let hourlyData = [
        HourlyData(image: "circle.fill", temp: "76°F", time: "7AM"),
        HourlyData(image: "circle.fill", temp: "77°F", time: "8AM"),
        HourlyData(image: "circle.fill", temp: "78°F", time: "9AM"),
        HourlyData(image: "circle.fill", temp: "79°F", time: "10AM"),
        HourlyData(image: "circle.fill", temp: "77°F", time: "11AM"),
        HourlyData(image: "circle.fill", temp: "76°F", time: "12PM"),
        HourlyData(image: "circle.fill", temp: "76°F", time: "1PM"),
        HourlyData(image: "circle.fill", temp: "77°F", time: "2PM"),
        HourlyData(image: "circle.fill", temp: "78°F", time: "3PM"),
        HourlyData(image: "circle.fill", temp: "79°F", time: "4PM"),
        HourlyData(image: "circle.fill", temp: "77°F", time: "5PM"),
        HourlyData(image: "circle.fill", temp: "76°F", time: "6PM")
    ]
    
    
}

struct DailyData: Identifiable {
    var id = UUID()
    
    let day: String
    let high: String
    let low: String
    let image: String
    
    static let dailyData = [
        DailyData(day: "Mon", high: "77°F", low: "60°F", image: "circle.fill"),
        DailyData(day: "Tue", high: "77°F", low: "60°F", image: "circle.fill"),
        DailyData(day: "Wed", high: "77°F", low: "60°F", image: "circle.fill"),
        DailyData(day: "Thu", high: "77°F", low: "60°F", image: "circle.fill"),
        DailyData(day: "Fri", high: "77°F", low: "60°F", image: "circle.fill"),
        DailyData(day: "Sat", high: "77°F", low: "60°F", image: "circle.fill"),
        DailyData(day: "Sun", high: "77°F", low: "60°F", image: "circle.fill")
    ]
    
    
}

struct GridData: Identifiable {
    var id = UUID()
    
    let cond: String
    let num: String
    let image: String
    
    static let gridData = [
        GridData(cond: "UV Index", num: "1", image: "sunrise"),
        GridData(cond: "Sunset", num: "6:45 PM", image: "sunset"),
        GridData(cond: "Wind", num: "8 mph", image: "wind"),
        GridData(cond: "Humidity", num: "45%", image: "cloud.rain"),
        GridData(cond: "Rainfall", num: "0 inches", image: "cloud.heavyrain"),
        GridData(cond: "Feels Like", num: "71°F", image: "thermometer"),
        GridData(cond: "Visibility", num: "10 mi", image: "eye"),
        GridData(cond: "Pressure", num: "29.95 inHg", image: "barometer")
    ]
    
    
}
