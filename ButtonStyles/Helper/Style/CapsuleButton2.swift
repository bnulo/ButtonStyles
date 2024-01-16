//
//  CapsuleButton2.swift
//  ButtonStyles
//
//  Created by bnulo on 1/16/24.
//

import SwiftUI

struct CapsuleButton2: ButtonStyle {

    let foregroundColor: Color
    let backgroundColor: Color
    var isFutureButton: Bool = false
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .customizedFont(.boldTitle)
            .foregroundColor(foregroundColor)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Rectangle()
                .fill(backgroundColor.opacity(
                    configuration.isPressed ? 0.5 : 1))
                    .clipShape(CapsuleShape())
            )
            .animation(configuration.isPressed ?
                .linear(duration: 0.005) :
                    .easeOut(duration: 1.3).delay(0.1),
                value: configuration.isPressed
            )
    }
}
