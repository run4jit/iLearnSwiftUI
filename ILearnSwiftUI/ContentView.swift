//
//  ContentView.swift
//  ILearnSwiftUI
//
//  Created by Ranjeet Singh on 22/07/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("UI Element") {
                    ForEach(UIElementName.allCases, id: \.self) { element in
                        element.viewFactory
                    }
                }
            }.navigationTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
