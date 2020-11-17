//
//  ContentView.swift
//  project-eight
//
//  Created by Pamela Ianovalli on 06/11/20.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationView {
            List(missions) { mission in
                NavigationLink(destination: MissionView(mission: mission, astronauts: self.astronauts)) {

                    VStack (alignment: .leading) {
                        HStack() {
                            Image(mission.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 44, height: 44)

                            Text(mission.displayName)
                                .font(.headline)
                        }

                        Text(mission.formattedLaunchDate)
                    }
                }
            }
            .navigationBarTitle("Moonshot")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
