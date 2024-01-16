//
//  CapsuleShape.swift
//  ButtonStyles
//
//  Created by bnulo on 1/16/24.
//

import SwiftUI

struct CapsuleShape: Shape {

    func path(in rect: CGRect) -> Path {
        let min = (rect.width < rect.height) ? rect.width : rect.height
        return Path { path in
            path.addRoundedRect(in: CGRect(x: 0, y: 0,
                                           width: rect.width,
                                           height: rect.height),
                                cornerSize: CGSize(width: min/2.37, height: min/2.37),
                                style: .continuous)
        }
    }
}
