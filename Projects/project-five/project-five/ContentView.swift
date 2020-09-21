//
//  ContentView.swift
//  project-five
//
//  Created by Pamela Ianovalli on 20/09/20.
//

import SwiftUI

struct ContentView: View {
    let people = ["Fin", "Leia", "Luke", "Rey"]

    var body: some View {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            if let fileContents = try? String(contentsOf: fileURL) {}
        }
        
        List(people, id: \.self) {
            Text($0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
