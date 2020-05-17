//
//  MusicCell.swift
//  SwiftUITutorials
//
//  Created by Ferlix Yanto Wang on 17/05/20.
//  Copyright © 2020 Ferlix Yanto Wang. All rights reserved.
//

import SwiftUI

struct MusicCell: View {
    let genre: String
    let musicIconName: String
    let isExpanded: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(musicIconName)
                    .resizable()
                    .frame(width: 30, height: 30)
                Text(genre)
                Spacer()
            }
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 0))
            
            if isExpanded {
                Text("This cell is expanded")
                    .fontWeight(.light)
                    .foregroundColor(.green)
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 0))
            }
        }
    }
}

struct MusicCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MusicCell(genre: "Genre 1", musicIconName: "music-icon", isExpanded: false)
            MusicCell(genre: "Genre 2", musicIconName: "music-icon", isExpanded: false)
            MusicCell(genre: "Genre 3", musicIconName: "music-icon", isExpanded: true)
        }
        .previewLayout(.fixed(width: 300, height: 100))
    }
}
