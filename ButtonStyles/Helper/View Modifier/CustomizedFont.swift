//
//  CustomizedFont.swift
//  ButtonStyles
//
//  Created by bnulo on 1/16/24.
//

import SwiftUI

extension View {

    func customizedFont(_ style: CustomizedFont.Style = .body) -> some View {

        self.modifier(CustomizedFont(style: style))
    }
}

struct CustomizedFont: ViewModifier {

    enum Style {

        case body
        case boldBody
        case boldLargeTitle
        case boldTitle
        case boldTitle2
        case button
        case checkmarkIcon
        case caption2
        case caption
        case callout
        case datePicker
        case forwardIcon
        case footnote
        case lightBody
        case largeTitle
        case sectionHeader
        case semiboldBody
        case title
        case title2
        case title3
        case boldTitle3
        case boldSubheadline

        var font: Font {
            switch self {
            case .body:
                return Font.system(.body, design: .rounded)
            case .boldBody:
                return Font.system(.body, design: .rounded).bold()
            case .button:
                return Font.system(.body, design: .rounded).bold()
            case .boldLargeTitle:
                return Font.system(.largeTitle, design: .rounded).bold()
            case .boldTitle:
                return Font.system(.title, design: .rounded).bold()
            case .boldTitle2:
                return Font.system(.title2, design: .rounded).bold()
            case .caption2:
                return Font.system(.caption2, design: .rounded)
            case .caption:
                return Font.system(.caption, design: .rounded)
            case .callout:
                return Font.system(.callout, design: .rounded)
            case .checkmarkIcon:
                return Font.system(.body, design: .rounded).weight(.semibold)
            case .datePicker:
                return Font.system(.subheadline, design: .rounded)
            case .footnote:
                return Font.system(.footnote, design: .rounded)
            case .forwardIcon:
                return Font.system(.footnote, design: .rounded)
            case .lightBody:
                return Font.system(.body, design: .rounded).weight(.light)
            case .largeTitle:
                return Font.system(.largeTitle, design: .rounded)
            case .sectionHeader:
                return Font.system(.footnote, design: .rounded)
            case .semiboldBody:
                return Font.system(.body, design: .rounded).weight(.semibold)
            case .title:
                return Font.system(.title, design: .rounded)
            case .title2:
                return Font.system(.title2, design: .rounded)
            case .title3:
                return Font.system(.title3, design: .rounded)
            case .boldTitle3:
                return Font.system(.title3, design: .rounded).bold()
            case .boldSubheadline:
                return Font.system(.subheadline, design: .rounded).bold()
            }
        }
    }

    let style: Style
    func body(content: Content) -> some View {
        content
            .font(style.font)
    }
}

