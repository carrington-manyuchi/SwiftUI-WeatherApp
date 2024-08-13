//
//  WeatherButton.swift
//  SwiftUI-Wather
//
//  Created by Manyuchi, Carrington C on 2024/08/12.
//

import SwiftUI

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
