//
//  ContentView.swift
//  Hacker News
//
//  Created by Ivan De Martino on 10/27/19.
//  Copyright © 2019 Ivan De Martino. All rights reserved.
//

import SwiftUI

struct ContentView: View {

  @ObservedObject var networkManager = NetworkManager()

  var body: some View {
    NavigationView {
      List(networkManager.posts) { post in
        NavigationLink(destination: DetailView(url: post.url)) {
          HStack {
            Text("\(post.points)")
            Text(post.title)
          }
        }
      }
      .navigationBarTitle("Hacker News")
    }
    .onAppear {
      self.networkManager.fetchData()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
