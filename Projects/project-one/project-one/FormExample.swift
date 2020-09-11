//
//  Form.swift
//  project-one
//
//  Created by Pamela Ianovalli on 07/09/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import SwiftUI

struct FormExample: View {
    @State private var name = ""

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter your name", text: $name)
                    Text("Your name is \(name)")
                }
                
                Section {
                    Text("Hello, World!")
                }
            }
            .navigationBarTitle("SwiftUI")
        }
    }
}

struct Form_Previews: PreviewProvider {
    static var previews: some View {
        FormExample()
    }
}
