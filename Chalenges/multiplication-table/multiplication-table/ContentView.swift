//
//  ContentView.swift
//  multiplication-table
//
//  Created by Pamela Ianovalli on 27/09/20.
//

import SwiftUI

struct ContentView: View {
    @State private var multiplicationTable = 1
    @State private var numberQuestions = 0
    @State private var isActive = false
    @State private var questions: [Question] = []
    @State private var answers: [String] = []
    
    
    var body: some View {
        NavigationView {
            Group {
                if !isActive {
                    Form {
                        Section(header: Text("Which multiplication table you want to practice ?")) {
                            Stepper(value: $multiplicationTable, in: 1...10) {
                                Text("\(multiplicationTable)")
                            }
                        }
                        
                        Section(header: Text("How many questions do you want to answer ?")) {
                            Stepper(value: $numberQuestions, in: 0...10, step: 5) {
                                Text("\(numberQuestions)")
                            }
                        }
                    }
                } else {
                    List(0..<questions.count) {
                        Text(questions[$0].text)
                            .padding()
                        
                        TextField("answer", text: $answers[$0])
                            .padding()
                        
                        Text(questions[$0].correction)
                            .padding()
                            .foregroundColor(questions[$0].correction == "right" ? Color.green : Color.red)
                    }
                }
            }
            
            .navigationTitle("Multiplication table")
            .navigationBarItems(trailing: Button(action: isActive ?  verificateAnswer : start) {
                Text(isActive ? "Check" : "Start")
            })
        }
    }
    
    func start() {
        isActive = true
        
        for _ in 0..<numberQuestions {
            let numberRandom = Int.random(in: 0...10)
            let answer = multiplicationTable * numberRandom
            let question = Question(text: "\(multiplicationTable) x \(numberRandom) = ", answer: String(Int(answer)), correction: "")
            
            questions.append(question)
            answers.append("")
        }
    }
    
    func verificateAnswer() {
        for (index, question) in questions.enumerated() {
            if question.answer == answers[index] {
                questions[index].correction = "right"
            } else {
                questions[index].correction = "wrong"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
