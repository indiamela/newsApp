//
//  NetworkManager.swift
//  newsApp
//
//  Created by Taishi Kusunose on 2021/07/28.
//

import Foundation

class NetworkManager {
    private let baseUrlString = "https://newsapi.org/v2/"
    private let usTopHeadline = "top-headlines?country=us"
    
    func getNews(completion: @escaping(([News]?) -> Void)) {
        let urlString = "\(baseUrlString)\(usTopHeadline)&apiKey=\(API.key)"
        
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data,responce,error) in
            guard error == nil, let data = data else {
                completion(nil)
                return
            }
            
            let newsRes = try? JSONDecoder().decode(NewsEnvelope.self, from: data)
            newsRes == nil ? completion(nil) : completion(newsRes!.articles)
        }.resume()
    }
    
    func getImage(urlString: String,completion: @escaping(Data?) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) {(data, responce, error) in
            guard error == nil, let data = data else {
                completion(nil)
                return
            }
            completion(data)
        }.resume()
    }
}
