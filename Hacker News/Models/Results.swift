//
//  Hits.swift
//  Hacker News
//
//  Created by Ivan De Martino on 10/27/19.
//  Copyright © 2019 Ivan De Martino. All rights reserved.
//

import Foundation

struct Results: Decodable {
  let hits: [Post]
}
