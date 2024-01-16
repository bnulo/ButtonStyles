//
//  CapsuleButton.swift
//  HealthViewComponents
//
//  Created by bnulo on 1/16/24.
//

import SwiftUI

struct CapsuleButton: ButtonStyle {

    let foregroundColor: Color
    let backgroundColor: Color
    var isFutureButton: Bool = false
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .customizedFont(.boldTitle)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(foregroundColor)
            .aspectRatio(1, contentMode: .fit)
            .frame(maxWidth: .infinity)
            .background(Rectangle()
                            .fill(backgroundColor)
                            .clipShape(CapsuleShape()))
    }
}
