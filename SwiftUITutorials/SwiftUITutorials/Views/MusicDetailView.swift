//
//  MusicDetailView.swift
//  SwiftUITutorials
//
//  Created by Ferlix Yanto Wang on 17/05/20.
//  Copyright © 2020 Ferlix Yanto Wang. All rights reserved.
//

import SwiftUI

struct MusicDetailView: View {
    @State private var selection: Set<MusicGenre> = []
    @State private var localMusicGenres = [
        MusicGenre(id: 1, genre: "Jazz"),
        MusicGenre(id: 2, genre: "Blues"),
        MusicGenre(id: 3, genre: "Pop"),
        MusicGenre(id: 4, genre: "K-Pop"),
        MusicGenre(id: 5, genre: "Funk"),
        MusicGenre(id: 6, genre: "Rock"),
        MusicGenre(id: 7, genre: "Classical"),
        MusicGenre(id: 8, genre: "Hip-Hop"),
        MusicGenre(id: 9, genre: "Reggae"),
        MusicGenre(id: 10, genre: "Instrument"),
        MusicGenre(id: 11, genre: "Soul"),
        MusicGenre(id: 12, genre: "RnB"),
        MusicGenre(id: 13, genre: "Country"),
        MusicGenre(id: 14, genre: "Easy Listening"),
        MusicGenre(id: 15, genre: "Orchestra")
    ]
    
    var body: some View {
        List {
            ForEach(localMusicGenres) { musicGenre in
                MusicCell(
                    genre: musicGenre.genre,
                    musicIconName: "music-icon-2",
                    isExpanded: self.selection.contains(musicGenre)
                )
                .onTapGesture {
                    self.selectDeselectCell(musicGenre)
                }
                .animation(.linear(duration: 0.3))
            }
            Text("")
                .onAppear {
                    self.loadMore()
                }
        }
        .navigationBarTitle("Exp-Col & Lo-Mo")
    }
    
    private func selectDeselectCell(_ genre: MusicGenre) {
        if selection.contains(genre) {
            selection.remove(genre)
        } else {
            selection.insert(genre)
        }
    }
    
    private func loadMore() {
        let totalCount = localMusicGenres.count
        
        let additionalGenres = (1 ... 10).map { index -> MusicGenre in
            MusicGenre(id: totalCount + index, genre: "New Genre \(totalCount + index)")
        }
        
        localMusicGenres.append(contentsOf: additionalGenres)

    }
}

struct MusicDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MusicDetailView()
    }
}
