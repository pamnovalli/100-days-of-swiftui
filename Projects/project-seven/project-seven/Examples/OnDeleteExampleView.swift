//
//  OnDeleteExampleView.swift
//  project-seven
//
//  Created by Pamela Ianovalli on 01/11/20.
//

import SwiftUI

struct OnDeleteExampleView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1

    var body: some View {
        NavigationView{
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("\($0)")
                    }
                    .onDelete(perform: removeRows)
                }

                Button("Add Number") {
                    self.numbers.append(self.currentNumber)
                    self.currentNumber += 1
                }
            }
        }
        .navigationBarItems(leading: EditButton())
    }

    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

struct OnDeleteExampleView_Previews: PreviewProvider {
    static var previews: some View {
        OnDeleteExampleView()
    }
}
