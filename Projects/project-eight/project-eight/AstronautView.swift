//
//  AstronautView.swift
//  project-eight
//
//  Created by Pamela Ianovalli on 07/11/20.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut
    let missions: [String]

    init(missions: [String]) {
        self.missions = missions
    }

    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack {
                    Image(self.astronaut.id)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width)

                    Text(self.astronaut.description)
                        .padding()
                }
            }
        }
        .navigationBarTitle(Text(astronaut.name), displayMode: .inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronauts: [Astronaut] = Bundle.main.decode("astronauts")

    static var previews: some View {
        AstronautView(astronaut: astronauts[0])
    }
}
