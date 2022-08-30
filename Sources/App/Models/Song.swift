//
//  Song.swift
//  
//
//  Created by TarraeRarae on 30.08.2022.
//

import Fluent
import Vapor

final class Song: Model, Content {
  static var schema = "songs"

  @ID(key: .id)
  var id: UUID?

  @Field(key: "title")
  var title: String

  init() {}

  init(id: UUID? = nil, title: String) {
    self.id = id
    self.title = title
  }
}
