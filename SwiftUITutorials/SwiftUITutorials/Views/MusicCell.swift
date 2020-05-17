//
//  MusicCell.swift
//  SwiftUITutorials
//
//  Created by Ferlix Yanto Wang on 17/05/20.
//  Copyright © 2020 Ferlix Yanto Wang. All rights reserved.
//

import SwiftUI

struct MusicCell: View {
    let musicIcon = Image.init("music-icon")
    let genre: String
    
    var body: some View {
        HStack {
            musicIcon
                .resizable()
                .frame(width: 50, height: 50)
            Text(genre)
            Spacer()
        }
        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 0))
    }
}

struct MusicCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MusicCell(genre: "Genre 1")
            MusicCell(genre: "Genre 2")
            MusicCell(genre: "Genre 3")
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
