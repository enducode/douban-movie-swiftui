//
//  ContentView.swift
//  douban-movie
//
//  Created by endu on 2023/12/4.
//

import SwiftUI

struct IndexView: View {
    var body: some View {
        TabView {
            HomeView()
                .environmentObject(Network())
                .tabItem({
                    Label("top 100", systemImage: "star.fill")
                })
            MineView()
                .tabItem({
                    Label("我的电影", systemImage: "list.dash")
                })
        }
    }
}

struct IndexView_Previews: PreviewProvider {
    static var previews: some View {
        IndexView()
            .environmentObject(Network())
    }
}
