//
//  ColorCircleView.swift
//  TraficLightSwiftUI
//
//  Created by Ilya Sokolov on 19.10.2022.
//

import SwiftUI



struct ColorCircleView: View {
    
    let colorOfCircle: Color
    var body: some View {
        Circle()
            .foregroundColor(colorOfCircle)
            .frame(width: 150)
            .overlay(Circle()
                .stroke(Color.blue, lineWidth: 2))
            .shadow(color: .cyan, radius: 6)
    }
}


struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(colorOfCircle: .red)
    }
}
