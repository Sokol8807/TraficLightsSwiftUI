//
//  BackView.swift
//  TraficLightSwiftUI
//
//  Created by Ilya Sokolov on 19.10.2022.
//

import SwiftUI

struct BackView: View {
    var body: some View {
        Color(.black)
            .frame(width: 200, height: 600, alignment: .center)
            .cornerRadius(50)
    }
}

struct BackView_Previews: PreviewProvider {
    static var previews: some View {
        BackView()
    }
}
