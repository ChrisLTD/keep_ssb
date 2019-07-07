//
//  ViewController.swift
//  Keep SSB
//
//  Created by Chris Johnson on 7/7/19.
//  Copyright © 2019 Yoeyo, Ltd. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController, WKUIDelegate {

    var webView: WKWebView!
    
    let webUrl = "https://keep.google.com"
    let webName = "Google Keep"
    
    override func loadView() {
        super.loadView()
        
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let myURL = URL(string:webUrl)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
    
        self.view.window?.title = webName
    }
}

