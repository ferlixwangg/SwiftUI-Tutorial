//
//  HomeView.swift
//  SwiftUITutorials
//
//  Created by Ferlix Yanto Wang on 17/05/20.
//  Copyright © 2020 Ferlix Yanto Wang. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Musicez")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.green)
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                    .multilineTextAlignment(.center)
                HStack {
                    NavigationLink(destination: MusicListView()) {
                        Text("Special application for music lovers")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 16, leading: 8, bottom: 16, trailing: 8))
                    }
                }
                .background(Color.green)
                Spacer()
                    .frame(height: UIScreen.main.bounds.height / 4)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
