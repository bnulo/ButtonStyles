//
//  CircularBorderedButton.swift
//  ButtonStyles
//
//  Created by bnulo on 1/16/24.
//

import SwiftUI

struct CircularBorderedButton: ButtonStyle {
    let borderColor: Color
    let foregroundColor: Color
    var backgroundColor: Color = Color(UIColor.systemBackground)

    func makeBody(configuration: Configuration) -> some View {

        VStack {
            configuration.label
                .customizedFont(.semiboldBody)
                .padding()
                .background(backgroundColor)
                .clipShape(Circle())
                .padding(.trailing, configuration.isPressed ? 0 : 4)
                .padding(.bottom, configuration.isPressed ? 0 : 4)
                .background(borderColor)
                .clipShape(Circle())
                .foregroundColor(foregroundColor)
                .padding(.top, 8)
                .padding(.leading, 8)
                .padding(.bottom, 4)
                .padding(.trailing, 4)
        }
        .padding(.top, configuration.isPressed ? 4 : 0)
        .padding(.leading, configuration.isPressed ? 4 : 0)
    }
}
