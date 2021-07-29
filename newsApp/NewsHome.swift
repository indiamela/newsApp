//
//  NewsHome.swift
//  newsApp
//
//  Created by Taishi Kusunose on 2021/07/30.
//

import SwiftUI

struct NewsHome: View {
    
    @ObservedObject private var newsListVM = NewsListVM()
    init() {
        newsListVM.load()
    }
    
    var body: some View {
        VStack{
            NewsListHeader()
            NewsListView(newsCollection: self.newsListVM.news, imageData: self.newsListVM.imageData)
        }
    }
}

struct NewsHome_Previews: PreviewProvider {
    static var previews: some View {
        NewsHome()
    }
}
