//
//  DetailView.swift
//  h4x0r-news
//
//  Created by Nguyen Xuan on 1/28/20.
//  Copyright © 2020 Nguyen Xuan. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
