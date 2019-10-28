//
//  NetworkManager.swift
//  Hacker News
//
//  Created by Ivan De Martino on 10/27/19.
//  Copyright © 2019 Ivan De Martino. All rights reserved.
//

import Foundation

final class NetworkManager: ObservableObject {

  @Published var posts = [Post]()

  func fetchData() {
    if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
      let session = URLSession(configuration: .default)
      let task = session.dataTask(with: url) { (data, response, error) in
        if error == nil {
          let decoder = JSONDecoder()
          if let data = data {
            do {
              let results = try decoder.decode(Results.self, from: data)
              DispatchQueue.main.async {
                self.posts = results.hits
              }
            } catch {
              print(error)
            }
          }
        }
      }
      task.resume()
    }
  }
}
