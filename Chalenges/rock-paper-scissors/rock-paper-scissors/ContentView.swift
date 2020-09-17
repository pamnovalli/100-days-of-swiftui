//
//  ContentView.swift
//  rock-paper-scissors
//
//  Created by Pamela Ianovalli on 17/09/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let objects: [Objects] = Objects.allCases
    
    @State private var randomIndex = Int.random(in: 0...2)
    @State private var isWinner = Bool.random()
    @State private var score = 0
    
    var body: some View {
        VStack(spacing: 20) {

            Text("Score: \(score)").modifier(TextStyle()).padding()
                .padding()
            
            HStack(spacing: 40) {
            Text(isWinner ? "Win" : "Lose").modifier(TextStyle())
            Text(objects[randomIndex].rawValue).modifier(TextStyle())
            }
            .padding()
            
             Text("Choose an object")
                .padding()
                        
            HStack(spacing: 20) {
                ForEach(0 ..< objects.count) { number in
                    Button(action: {
                        self.objectTapped(number)
                    }) {
                        Text(self.objects[number].rawValue).modifier(TextStyle())
                    }
                }
            }
            
        }
    }
    
    func objectTapped(_  indexSelected: Int) {
        let objectAppSelected = objects[randomIndex]
        let objectSelected = objects[indexSelected]
        
        if isWinner {
            switch (objectAppSelected, objectSelected) {
            case (.rock, .rock):
                score -= 1
            case (.rock, .paper):
                score += 1
            case (.rock, .scissors):
                score -= 1
            case (.paper, .rock):
                score -= 1
            case (.scissors, .rock):
                score += 1
            case (.paper, .paper):
                score -= 1
            case (.paper, .scissors):
                 score += 1
            case (.scissors, .scissors):
                 score -= 1
            case (.scissors, .paper):
                score -= 1
            }
        } else {
            switch (objectAppSelected, objectSelected) {
            case (.rock, .rock):
                score += 1
            case (.rock, .paper):
                score -= 1
            case (.rock, .scissors):
                score += 1
            case (.paper, .rock):
                score += 1
            case (.scissors, .rock):
                score -= 1
            case (.paper, .paper):
                score += 1
            case (.paper, .scissors):
                 score -= 1
            case (.scissors, .scissors):
                 score += 1
            case (.scissors, .paper):
                score -= 1
            }
        }
        
        isWinner.toggle()
        randomIndex = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Objects: String, CaseIterable {
    case rock = "Rock"
    case paper = "Paper"
    case scissors = "Scissors"
}

struct TextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(size: 20, weight: .bold, design: .rounded))
            .foregroundColor(Color.black)
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(TextStyle())
    }
}
