//
//  NewsArticleWebView.swift
//  newsApp
//
//  Created by Taishi Kusunose on 2021/07/30.
//

import SwiftUI

struct NewsArticleWebView: View {
    var newsUrl: String
    
    var body: some View {
        SwiftUIWebView(urlString: newsUrl)
            .padding(.top,20)
    }
}
