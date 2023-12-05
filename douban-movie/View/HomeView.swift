//
//  HomeView.swift
//  douban-movie
//
//  Created by endu on 2023/12/5.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @EnvironmentObject var network: Network

    var body: some View {
        ScrollView{
            Text("Top 100")
                .font(.title)
            VStack {
                ForEach(network.movies) {
                    movie in Text("Movie Nmae is \(movie.originalName)")
                }
            }
        }
        .padding(.vertical)
        .onAppear {
            network.getTop100()
        }
        
    }
}
