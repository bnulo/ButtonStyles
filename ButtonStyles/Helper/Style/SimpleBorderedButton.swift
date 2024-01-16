//
//  SimpleBorderedButton.swift
//  ButtonStyles
//
//  Created by bnulo on 1/16/24.
//

import SwiftUI

struct SimpleBorderedButton: ButtonStyle {

    var foregroundColor: Color = .purple

    func makeBody(configuration: Configuration) -> some View {

        configuration.label
            .customizedFont(.boldBody)
            .frame(maxWidth: .infinity)
            .foregroundColor(foregroundColor)
            .padding()
            .background(RoundedRectangle(cornerRadius: 24, style: .continuous)
                .stroke(foregroundColor))
            .contentShape(Rectangle())
    }
}
