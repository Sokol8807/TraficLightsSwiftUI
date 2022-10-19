//
//  ContentView.swift
//  TraficLightSwiftUI
//
//  Created by Ilya Sokolov on 19.10.2022.
//

import SwiftUI

private let lightOn = 1.00
private let lightOff = 0.4

struct ContentView: View {
       
    @State var currentPositionRed = lightOff
    @State var currentPositionYellow = lightOff
    @State var currentPositionGreen = lightOff
    @State var buttonTitle = "Start"
    
    private func nextColor () {
        if currentPositionRed == lightOff &&
            currentPositionYellow == lightOff &&
            currentPositionGreen == lightOff {
            currentPositionRed = lightOn
        } else if currentPositionRed == lightOn {
            currentPositionRed = lightOff
            currentPositionYellow = lightOn
        } else if currentPositionYellow == lightOn {
            currentPositionYellow = lightOff
            currentPositionGreen = lightOn
        } else if currentPositionGreen == lightOn {
            currentPositionGreen = lightOff
        }
    }
    
    private func setLable() {
        if buttonTitle == "Start" {
            buttonTitle = "Next"
        }
    }
    
    var body: some View {
        ZStack {
            BackView()
                .padding(.bottom, 105)
            VStack {
                ColorCircleView(colorOfCircle: .red)
                    .opacity(currentPositionRed)
                ColorCircleView(colorOfCircle: .yellow)
                    .opacity(currentPositionYellow)
                ColorCircleView(colorOfCircle: .green)
                    .opacity(currentPositionGreen)
                Spacer()
                Button {
                    setLable()
                    nextColor()
                } label: {
                    Text(buttonTitle)
                        .font(.title)
                }
            }
            .padding(.top, 50)
            .padding(.bottom, 40)
        }
     
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

