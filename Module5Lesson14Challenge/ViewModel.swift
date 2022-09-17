//
//  ViewModel.swift
//  Module5Lesson14Challenge
//
//  Created by Braxton Ward on 9/16/22.
//

import Foundation

class TriviaModel: ObservableObject {
    @Published var trivia = "Alaska is the easter and western and southern most state in the U.S"
    
    init() {
        fetchRandomTrivia()
    }
    
    func fetchRandomTrivia() {
        let urlString = "http://numbersapi.com/random/trivia"
        
        let hostURL = URL(string: urlString)
        
        if let url = hostURL {
            let request = URLRequest(url: url)
            
            let session = URLSession.shared
            session.dataTask(with: request) { data, response, error in
                guard error == nil else {
                    print("Error getting remote data")
                    return
                }
                
                
                let parsedString = String(data: data!, encoding: .utf8)
                
                if let newTrivia = parsedString {
                    self.trivia = newTrivia
                }
            }
            .resume()
        }
        
        
    }
}
