//
//  ContentView.swift
//  SwiftUI-Wather
//
//  Created by Manyuchi, Carrington C on 2024/08/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(content: {
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            
            VStack{
                CitytextView(cityName: "Mutare, ZW")
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 16)
        
                HStack(content: {
                    WeatherDayView(dayOfWeek: "Tue", 
                                   imageName: "cloud.sun.fill",
                                   temperature: 20)
                    WeatherDayView(dayOfWeek: "Wed", 
                                   imageName: "sun.max.fill",
                                   temperature: 33)
                    WeatherDayView(dayOfWeek: "Thu", 
                                   imageName: "wind.snow",
                                   temperature: 12)
                    WeatherDayView(dayOfWeek: "Fri", 
                                   imageName: "sunset.fill",
                                   temperature: 21)
                    WeatherDayView(dayOfWeek: "Sat", 
                                   imageName: "smoke.fill",
                                   temperature: 11)
                })
                
                Spacer()
                
                Button(action: {
                    print("Button pressed!!!")
                }, label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white
                    )
                })
                Spacer()
            }
        })
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10, content: {
            Text(dayOfWeek.uppercased())
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundStyle(.white)
            
        })
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing )
        .edgesIgnoringSafeArea(.all)
    }
}


struct CitytextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding(.top, 20)
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10, content: {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundStyle(.white)
        })
        .padding(.bottom, 40)
    }
}


struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50, alignment: .center)
            .background(backgroundColor)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
            .shadow(radius: 10)
    }
}
