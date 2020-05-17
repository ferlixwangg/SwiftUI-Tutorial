//
//  Models.swift
//  SwiftUITutorials
//
//  Created by Ferlix Yanto Wang on 17/05/20.
//  Copyright © 2020 Ferlix Yanto Wang. All rights reserved.
//

import Foundation

internal struct MusicGenre: Identifiable {
    let id: Int
    let genre: String
}

internal let musicGenres: [MusicGenre] = [
    MusicGenre(id: 1, genre: "Jazz"),
    MusicGenre(id: 2, genre: "Blues"),
    MusicGenre(id: 3, genre: "Pop"),
    MusicGenre(id: 4, genre: "K-Pop"),
    MusicGenre(id: 5, genre: "Funk"),
    MusicGenre(id: 6, genre: "Rock"),
    MusicGenre(id: 7, genre: "Classical"),
    MusicGenre(id: 8, genre: "Hip-Hop")
]
