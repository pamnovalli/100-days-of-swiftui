//
//  ContentView.swift
//  project-eight
//
//  Created by Pamela Ianovalli on 05/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Text("Detail View")) {
                    Text("Hello World")
                }
            }
            .navigationBarTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
