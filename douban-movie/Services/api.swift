//
//  api.swift
//  douban-movie
//
//  Created by endu on 2023/12/5.
//

import Foundation

class Network: ObservableObject {
    
    @Published var movies: [MovieItem] = [];
    
    func getTop100() {
        guard let url = URL(string: "https://api.wmdb.tv/api/v1/top?type=Imdb&skip=0&limit=50&lang=Cn") else { fatalError("Missing URL") };
        var urlRequest = URLRequest(url: url);
        
        urlRequest.httpMethod = "GET";
        
        let session = URLSession.shared;
        
        let task = session.dataTask(with: urlRequest, completionHandler: {
            (data, response, error) in
            guard let data = data else { return }
            do {
                let decodedMovies = try JSONDecoder().decode([MovieItem].self, from: data);
                self.movies = decodedMovies;
            } catch let error {
                print("Erroe", error);
            }
        });

        task.resume();
    }
}
