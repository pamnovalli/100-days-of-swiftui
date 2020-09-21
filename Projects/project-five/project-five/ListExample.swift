//
//  ListExample.swift
//  project-five
//
//  Created by Pamela Ianovalli on 20/09/20.
//

import SwiftUI

struct ListExample: View {
    var body: some View {
        List {
            Section(header: Text("Section 1")) {
                Text("Static row")
            }
            
            Section(header: Text("Section 2")) {
                ForEach(0..<5) {
                    Text("Dynamic row \($0)")
                }
            }
        }
    }
}

struct ListExample_Previews: PreviewProvider {
    static var previews: some View {
        ListExample()
    }
}
