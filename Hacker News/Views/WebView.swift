//
//  WebView.swift
//  Hacker News
//
//  Created by Ivan De Martino on 10/27/19.
//  Copyright © 2019 Ivan De Martino. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

  let urlString: String?

  func makeUIView(context: Context) -> WKWebView {
    return WKWebView()
  }

  func updateUIView(_ uiView: WKWebView, context: Context) {
    if let safeUrl = urlString {
      if let url = URL(string: safeUrl) {
        let request = URLRequest(url: url)
        uiView.load(request)
      }
    }
  }
}
