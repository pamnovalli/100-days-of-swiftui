//
//  ContentView.swift
//  project-three
//
//  Created by Pamela Ianovalli on 14/09/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!").modifier(TextStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.largeTitle)
            .foregroundColor(Color.blue)
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(TextStyle())
    }
}
