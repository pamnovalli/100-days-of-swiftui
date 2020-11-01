//
//  SecondView.swift
//  project-seven
//
//  Created by Pamela Ianovalli on 01/11/20.
//

import SwiftUI

struct SecondView: View {
    var name: String
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(name: "")
    }
}
