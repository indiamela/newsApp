//
//  NewsListHeader.swift
//  newsApp
//
//  Created by Taishi Kusunose on 2021/07/30.
//

import SwiftUI

struct NewsListHeader: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack{
                Image(systemName: "largecicle.fill.circle")
                Text("News").bold()
                Image(systemName: "plus")
                Spacer()
            }
            .foregroundColor(.black)
            .font(.largeTitle)
            Text("Top Headerlines")
                .foregroundColor(.gray)
                .font(.largeTitle)
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
    }
}

struct NewsListHeader_Previews: PreviewProvider {
    static var previews: some View {
        NewsListHeader()
    }
}
