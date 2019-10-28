//
//  DetailView.swift
//  Hacker News
//
//  Created by Ivan De Martino on 10/27/19.
//  Copyright © 2019 Ivan De Martino. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {

  let url: String?
  
  var body: some View {
    WebView(urlString: url)
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(url: "https://www.google.com")
  }
}


