//
//  CreateSongs.swift
//  
//
//  Created by TarraeRarae on 30.08.2022.
//

import Fluent

struct CreateSongs: AsyncMigration {
  func prepare(on database: Database) async throws {
    try await database.schema("songs")
      .id()
      .field("title", .string, .required)
      .create()
  }
  
  func revert(on database: Database) async throws {
    try await database.schema("songs").delete()
  }
}
