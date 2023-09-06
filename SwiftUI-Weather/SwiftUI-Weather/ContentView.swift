//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Dhikshith Reddy on 07/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackgroundView(
                topColor: .blue, bottomColor: .lightBlue)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .center)
                    Text("76°")
                        .font(.system(size: 50, weight: .bold, design: .default))
                        .foregroundStyle(.white)

                }.padding(.bottom, 40)
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 88)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 55)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 60)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temperature: 25)
                    
                }
                Spacer()
                
                Button{
                    print("Button tapped...")
                } label: {
                   Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10.0)
                }
                
                Spacer()
            }
        }
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
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 22, weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: .center)
            Text("\(temperature) °")
                .font(.system(size: 22, weight: .bold, design: .default))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
     
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(colors: [topColor, bottomColor], startPoint: UnitPoint.topLeading, endPoint: UnitPoint.bottomLeading).ignoresSafeArea(.all)
    }
}
