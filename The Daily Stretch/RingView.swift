//
//  RingView.swift
//  ActivityRingDemo
//
//  Created by Michayal Mathew on 4/15/23.
//

import SwiftUI

struct Ring: View {
    let lineWidth: CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    let percentage: Double
    
    var body: some View{
        GeometryReader { geometry in
            ZStack {
                // Track
                RingShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth ))
                    .fill(backgroundColor)
                // Animated Fill
                RingShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round ))
                    .fill(foregroundColor)
            }
            .animation(Animation.easeIn(duration: 1))
            .padding(lineWidth/2)
        }
    }
}
