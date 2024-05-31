//
//  ContentView.swift
//  iDinnerSwiftUI
//
//  Created by Ramiro Gutierrez de la Paz on 31/05/24.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationStack {
            List(content: {
                ForEach(menu) { section in
                    Section(section.name) {
                        ForEach(section.items) { items in
                            ItemRow(item: items)
                        }
                    }
                    
                }
            })
            .navigationTitle("Menu")
            .listStyle(.automatic)
        }
    }
}

#Preview {
    ContentView()
}
