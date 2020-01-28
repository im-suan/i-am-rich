//
//  WebView.swift
//  h4x0r-news
//
//  Created by Nguyen Xuan on 1/28/20.
//  Copyright © 2020 Nguyen Xuan. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI
    
struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
