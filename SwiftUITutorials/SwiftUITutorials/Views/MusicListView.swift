//
//  MusicListView.swift
//  SwiftUITutorials
//
//  Created by Ferlix Yanto Wang on 17/05/20.
//  Copyright © 2020 Ferlix Yanto Wang. All rights reserved.
//

import SwiftUI

struct MusicListView: View {
    var body: some View {
        List(musicGenres) { musicGenre in
           NavigationLink(destination: MusicDetailView()) {
               MusicCell(genre: musicGenre.genre)
           }
        }
       .navigationBarTitle("Genre List Tap Move")
    }
}

struct MusicListView_Previews: PreviewProvider {
    static var previews: some View {
        MusicListView()
    }
}
