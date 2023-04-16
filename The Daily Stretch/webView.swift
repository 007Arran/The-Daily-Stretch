//
//  MorningBrew.swift
//  The Daily Stretch
//
//  Created by Arran James on 4/15/23.
//


import SwiftUI
import WebKit

struct webView: UIViewRepresentable {
    
    let urlToGo: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let urlGo = URL(string: urlToGo) else {return}
        uiView.scrollView.isScrollEnabled = true
        uiView.load(URLRequest(url: urlGo))
    }
}

//import SwiftUI
//import UIKit
//import WebKit
//
//class webView: UIViewController {
//
////    let urlToGo: String
////    let webView = WKWebView();
////
////    func makeUIView(context: Context) -> WKWebView {
////        return WKWebView()
////    }
////
////    func viewDidLoad() {
////        super.viewDidLoad()
////        view.addSubview(webView)
////
////        guard let url = URL(string: urlToGo) else {
////            return
////        }
////        webView.load(URLRequest(url: url))
////    }
////
////    func viewDidLayoutSubviews() {
////        super.viewDidLayoutSubviews()
////        webView.frame = view.bounds
////    }
//}
