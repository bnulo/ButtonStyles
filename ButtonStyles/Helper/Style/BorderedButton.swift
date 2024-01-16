//
//  BorderedButton.swift
//  ButtonStyles
//
//  Created by bnulo on 1/16/24.
//

import SwiftUI

struct BorderedButton: ButtonStyle {
    let borderColor: Color
    let foregroundColor: Color
    var backgroundColor: Color = Color(UIColor.systemBackground)

    func makeBody(configuration: Configuration) -> some View {

        VStack {
            configuration.label
                .customizedFont(.semiboldBody)
                .padding()
                .background(backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
                .padding(2)
                .padding(.bottom, configuration.isPressed ? 0 : 4)
                .background(borderColor)
                .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))

            .foregroundColor(foregroundColor)
            .padding(.horizontal, 8)
            .padding(.top, 8)
            .padding(.bottom, 4)
        }
        .padding(.top, configuration.isPressed ? 4 : 0)
    }
}
