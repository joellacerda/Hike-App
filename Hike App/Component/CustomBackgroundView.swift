//
//  CustomBackgroundView.swift
//  Hike App
//
//  Created by Joel Lacerda on 13/03/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3. DEPTH
            Color.customGreenDark
                .clipShape(.rect(cornerRadius: 40))
                .offset(y: 12)
            
            // MARK: - 2. LIGHT
            Color.customGreenLight
                .clipShape(.rect(cornerRadius: 40))
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: - 1. SURFACE
            LinearGradient(
                colors: [
                    Color.customGreenLight,
                    Color.customGreenMedium],
                startPoint: .top,
                endPoint: .bottom
            )
            .clipShape(.rect(cornerRadius: 40))
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
