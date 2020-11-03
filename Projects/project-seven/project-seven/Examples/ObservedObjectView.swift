//
//  ContentView.swift
//  project-seven
//
//  Created by Pamela Ianovalli on 01/10/20.
//

import SwiftUI

struct ObservedObjectView: View {
    @ObservedObject var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName)  \(user.lastName).")
            
            TextField("First name", text: $user.firstName)
            TextField("First name", text: $user.lastName)
        }
    }
}

struct ObservedObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectView()
    }
}

class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}
