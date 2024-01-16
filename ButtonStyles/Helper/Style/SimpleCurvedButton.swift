//
//  SimpleCurvedButton.swift
//  ButtonStyles
//
//  Created by bnulo on 1/16/24.
//

import SwiftUI

struct SimpleCurvedButton: ButtonStyle {

    var foregroundColor: Color = .primary
    let backgroundColor: Color

    func makeBody(configuration: Configuration) -> some View {

        configuration.label
            .customizedFont(.button)
            .frame(maxWidth: .infinity)
            .foregroundColor(foregroundColor)
            .padding()
            .background(RoundedRectangle(cornerRadius: 24, style: .continuous)
                .fill(backgroundColor))
    }
}


