//
//  ForEachExample.swift
//  project-one
//
//  Created by Pamela Ianovalli on 07/09/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import SwiftUI

struct ForEachExample: View {
    let students = ["Harry", "Herminone", "Ron"]
    @State private var selectedStudent = 0
    
    var body: some View {
        VStack {
            Picker("Select your student", selection: $selectedStudent) {
                ForEach(0 ..< students.count) {
                    Text(self.students[$0])
                }
            }
            Text("You chose: Student \(students[selectedStudent])")
        }
    }
}

struct ForEachExample_Previews: PreviewProvider {
    static var previews: some View {
        ForEachExample()
    }
}
