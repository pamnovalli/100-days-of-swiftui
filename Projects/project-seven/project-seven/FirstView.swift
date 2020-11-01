//
//  FirstView.swift
//  project-seven
//
//  Created by Pamela Ianovalli on 01/11/20.
//

import SwiftUI

struct FirstView: View {
@State private var showingSheet = false

    var body: some View {
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Pamela")
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
