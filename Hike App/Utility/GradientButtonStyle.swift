//
//  GradientButtonStyle.swift
//  Hike App
//
//  Created by Joel Lacerda on 14/03/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statement with Ternary Conditional Operator
                // Condition ? A : B
                configuration.isPressed ?
                // A: When user pressed the button
                LinearGradient(
                    colors: [.customGrayMedium, .customGrayLight],
                    startPoint: .top, endPoint: .bottom)
                :
                // B: When the button is not pressed
                LinearGradient(
                    colors: [.customGrayLight, .customGrayMedium],
                    startPoint: .top, endPoint: .bottom)
            )
            .clipShape(.rect(cornerRadius: 40))
    }
}
