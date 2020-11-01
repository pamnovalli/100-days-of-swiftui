//
//  CodableExampleView.swift
//  project-seven
//
//  Created by Pamela Ianovalli on 01/11/20.
//

import SwiftUI

struct CodableExampleView: View {
@State private var user = UserIdentifier(firstName: "Pamela", lastName: "Ianovalli")

    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()

            if let data = try? encoder.encode(self.user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

struct CodableExampleView_Previews: PreviewProvider {
    static var previews: some View {
        CodableExampleView()
    }
}

struct UserIdentifier: Codable {
    var firstName: String
    var lastName: String
}
