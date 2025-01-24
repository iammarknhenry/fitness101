//
//  ProgressCircleView.swift
//  FitnessApp
//
//  Created by Mark Henry on 24/01/2025.
//

import SwiftUI

struct ProgressCircleView: View {
    private let width: CGFloat = 20
    var color: Color
    @Binding var progress: Int
    var goal: Int
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(color.opacity(0.3), lineWidth: width)
            
            Circle()
                .trim(from: 0, to: CGFloat(progress)/CGFloat(goal))
                .stroke(color, style: StrokeStyle(lineWidth: width, lineCap: .round))
                .rotationEffect(Angle(degrees: -90))
                .shadow(radius: 5)
        }
        .padding()
    
    }
}

#Preview {
    ProgressCircleView(color: .red, progress: .constant(100), goal: 200)
}
