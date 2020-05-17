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
    
    var body: some View {
        ScrollView {
            ForEach(musicGenres) { musicGenre in
                MusicCell(
                    genre: musicGenre.genre,
                    musicIconName: "music-icon-2",
                    isExpanded: self.selection.contains(musicGenre)
                )
                .onTapGesture {
                    self.selectDeselectCell(musicGenre)
                }
                .modifier(ListRowModifier())
                .animation(.linear(duration: 0.3))
            }
        }
        
//        List(musicGenres) { musicGenre in
//            MusicCell(
//                genre: musicGenre.genre,
//                musicIconName: "music-icon-2",
//                isExpanded: self.selection.contains(musicGenre)
//            )
//            .onTapGesture {
//                self.selectDeselectCell(musicGenre)
//            }
//            .animation(.linear(duration: 0.3))
//        }
            
        .navigationBarTitle("List Expand Collapse")
    }
    
    private func selectDeselectCell(_ genre: MusicGenre) {
        if selection.contains(genre) {
            selection.remove(genre)
        } else {
            selection.insert(genre)
        }
    }
}

struct MusicDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MusicDetailView()
    }
}

struct ListRowModifier: ViewModifier {
    func body(content: Content) -> some View {
        Group {
            content
            Divider()
        }.offset(x: 20)
    }
}
