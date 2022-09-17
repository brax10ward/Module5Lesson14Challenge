//
//  ContentView.swift
//  Module5Lesson14Challenge
//
//  Created by Braxton Ward on 9/16/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: TriviaModel
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "brain.head.profile")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text(model.trivia)
                .multilineTextAlignment(.center)
            
            Button("Get a new fact!") {
                model.fetchRandomTrivia()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TriviaModel())
    }
}
