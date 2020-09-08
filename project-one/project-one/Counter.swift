//
//  Counter.swift
//  project-one
//
//  Created by Pamela Ianovalli on 07/09/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import SwiftUI

struct Counter: View {
    @State private var tapCount = 0
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }
    }
}

struct Counter_Previews: PreviewProvider {
    static var previews: some View {
        Counter()
    }
}
