//
//  ShowingViewsWithTransitionExample.swift
//  project-six
//
//  Created by Pamela Ianovalli on 26/09/20.
//

import SwiftUI

struct ShowingViewsWithTransitionExample: View {
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap me") {
                self.isShowingRed.toggle()
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
    }
}

struct ShowingViewsWithTransitionExample_Previews: PreviewProvider {
    static var previews: some View {
        ShowingViewsWithTransitionExample()
    }
}
