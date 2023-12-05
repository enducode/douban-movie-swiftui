//
//  MovieItem.swift
//  douban-movie
//
//  Created by endu on 2023/12/5.
//

import Foundation


struct MovieItem: Identifiable, Decodable {
    var id: String;
    var type: String;
    var originalName: String;
}
