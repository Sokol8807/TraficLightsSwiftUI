//
//  ContentView.swift
//  TraficLightSwiftUI
//
//  Created by Ilya Sokolov on 19.10.2022.
//

import SwiftUI

enum CurrentLigh {
    case red, yellow, green
}

struct ContentView: View {
       
    @State var currentPositionRed = 0.4
    @State var currentPositionYellow = 0.4
    @State var currentPositionGreen = 0.4
    
    @State  private var currentLight = CurrentLigh.red
    
    @State var buttonTitle = "Start"
    
    private func nextColor () {
        let lightOn = 1.00
        let lightOff = 0.4
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            currentPositionRed = lightOn
            currentPositionGreen = lightOff
        case .yellow:
            currentLight = .green
            currentPositionRed = lightOff
            currentPositionYellow = lightOn
        case .green:
            currentLight = .red
            currentPositionYellow = lightOff
            currentPositionGreen = lightOn
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

