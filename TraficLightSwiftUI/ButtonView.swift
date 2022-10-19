//
//  ButtonView.swift
//  TraficLightSwiftUI
//
//  Created by Ilya Sokolov on 19.10.2022.
//

import SwiftUI

struct ButtonView: View {
    
    @State private var buttonTitle = "Start"
    var body: some View {
        
        Button {
            buttonLabelChanger()
        } label: {
            Text(buttonTitle)
                .font(.title)
        }
    }
    
    private func buttonLabelChanger() {
        if buttonTitle == "Start" {
            buttonTitle = "Next"
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}

