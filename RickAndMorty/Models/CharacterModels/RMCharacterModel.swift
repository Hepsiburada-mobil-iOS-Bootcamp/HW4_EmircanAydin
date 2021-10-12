//
//  RickAndMortyCharacter.swift
//  RickAndMorty
//
//  Created by Emircan Aydın on 11.10.2021.
//

import Foundation

// Properties
//   - id: The id of the character.
//   - name: The name of the character.
//   - status: The status of the character ('Alive', 'Dead' or 'unknown').
//   - species: The species of the character.
//   - type: The type or subspecies of the character.
//   - gender: The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
//   - origin: Name and link to the character's origin location.
//   - location: Name and link to the character's last known location endpoint.
//   - image: Link to the character's image. All images are 300x300px and most are medium shots      or portraits since they are intended to be used as avatars.
//   - episodes: List of episodes in which this character appeared.
//   - url: Link to the character's own URL endpoint.
//   - created: Time at which the character was created in the database.
struct RMCharacterModel: Codable, Identifiable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: RMCharacterOriginModel
    let location: RMCharacterLocationModel
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
