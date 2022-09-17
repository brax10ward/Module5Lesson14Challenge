//
//  Module5Lesson14ChallengeApp.swift
//  Module5Lesson14Challenge
//
//  Created by Braxton Ward on 9/16/22.
//

import SwiftUI

@main
struct Module5Lesson14ChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(TriviaModel())
        }
    }
}
