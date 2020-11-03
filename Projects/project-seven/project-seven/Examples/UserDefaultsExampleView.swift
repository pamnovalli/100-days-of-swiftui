//
//  UserDefaultsExampleView.swift
//  project-seven
//
//  Created by Pamela Ianovalli on 01/11/20.
//

import SwiftUI

struct UserDefaultsExampleView: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")

    var body: some View {
        Button("Tap count: \(tapCount)") {
            self.tapCount += 1
            UserDefaults.standard.set(self.tapCount, forKey: "Tap")
        }
    }
}

struct UserDefaultsExampleView_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultsExampleView()
    }
}
