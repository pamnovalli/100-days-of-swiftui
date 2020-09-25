//
//  AnimationExample.swift
//  project-six
//
//  Created by Pamela Ianovalli on 23/09/20.
//

import SwiftUI

struct AnimationExample: View {
    @State private var animationAmount: CGFloat = 1
    @State private var enable = false
    
    var body: some View {
        VStack {
            Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
            
            Spacer()
            
            Button("Tap me") {
                self.enable.toggle()
            }
            .frame(width: 200, height: 200)
            .background(enable ? Color.blue : Color.red)
            .animation(nil)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: enable ? 60 : 0))
            .animation(.interpolatingSpring(stiffness: 10, damping: 1))
        }
    }
}

struct AnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        AnimationExample()
    }
}
