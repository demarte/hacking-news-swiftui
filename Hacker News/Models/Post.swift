//
//  Post.swift
//  Hacker News
//
//  Created by Ivan De Martino on 10/27/19.
//  Copyright © 2019 Ivan De Martino. All rights reserved.
//

import Foundation

struct Post: Identifiable, Decodable {
  let id: String
  let title: String
  let points: Int
  let url: String?

  enum CodingKeys: String, CodingKey {
    case id = "objectID"
    case title, points, url
  }
}
