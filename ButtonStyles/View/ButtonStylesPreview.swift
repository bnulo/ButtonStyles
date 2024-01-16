//
//  ButtonStylesPreview.swift
//  ButtonStyles
//
//  Created by bnulo on 1/16/24.
//

import SwiftUI

struct ButtonStylesPreview: View {

    @State private var isClicked: Bool = false

    var body: some View {
        ScrollView {
            text
            VStack {
                borderedButton
                HStack(spacing: 24) {
                    circularBorderedButton
                    capsuleButton
                }.padding()
                simpleCurvedButton
                simpleBorderedButton
                capsuleButton2
            }
            .padding()
        }
    }

    // MARK: - Child Views

    private var text: some View {
        Text("Tapped!")
            .customizedFont(.boldLargeTitle)
            .opacity(isClicked ? 1 : 0)
            .animation(Animation.spring(),
                                  value: isClicked)
    }

    // MARK: - Bordered Button

    private var borderedButton: some View {
        Button {
            doSomething()
        } label: {
            Text("Bordered Button")
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(BorderedButton(borderColor: .red,
                                    foregroundColor: .black,
                                    backgroundColor: .white))
        .frame(minWidth: 0, maxWidth: .infinity)
    }

    // MARK: - Circular Bordered Button

    private var circularBorderedButton: some View {
        ZStack {
            Rectangle()
                .fill(Color.clear)
                .aspectRatio(1, contentMode: .fit)
            Button {
                 doSomething()
            } label: {
                Text("Circular Bordered Button")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .buttonStyle(
                CircularBorderedButton(borderColor: .blue,
                                       foregroundColor: .black,
                                       backgroundColor: .white))
        }
    }

    // MARK: - Simple Curved Button

    private var simpleCurvedButton: some View {
        Button {
            doSomething()
        } label: {
            Text("Simple Curved Button")
        }
        .buttonStyle(SimpleCurvedButton(backgroundColor: .green))
//        .disabled()
    }

    // MARK: - Simple Bordered Button

    private var simpleBorderedButton: some View {
        Button {
            doSomething()
        } label: {
            Text("Cancel")
        }
        .buttonStyle(SimpleBorderedButton())
    }

    // MARK: - Capsule Button

    var capsuleButton: some View {
        Button {
            doSomething()
        } label: {
            Text("Capsule Button")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .buttonStyle(CapsuleButton(foregroundColor: .white,
                                    backgroundColor: .blue))
    }

    // MARK: - Capsule Button2

    var capsuleButton2: some View {
        Button {
            doSomething()
        } label: {
            Text("Capsule Button2")
                .frame(maxWidth: .infinity,
                       maxHeight: .infinity)
        }
        .buttonStyle(CapsuleButton2(foregroundColor: .white,
                                    backgroundColor: .blue))
    }

    // MARK: - Function

    private func doSomething() {

        withAnimation {
            isClicked = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                isClicked = false
            }
        }
    }
}
