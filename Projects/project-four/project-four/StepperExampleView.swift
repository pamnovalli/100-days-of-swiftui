//
//  StepperExampleView.swift
//  project-four
//
//  Created by Pamela Ianovalli on 17/09/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import SwiftUI

struct StepperExampleView: View {
    @State private var sleepAmount = 8.0
    
    var body: some View {
        Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
            Text("\(sleepAmount, specifier: "%g") hours")
        }
    }
}

struct StepperExampleView_Previews: PreviewProvider {
    static var previews: some View {
        StepperExampleView()
    }
}
