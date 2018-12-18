//
//  ViewController.swift
//  WebView
//
//  Created by 南希 on 2018/12/18.
//  Copyright © 2018年 nanxi. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController {

    @IBOutlet weak var url: UITextField!
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let url = URL(string: "https://www.163.com"){
            webView.load(URLRequest(url: url))
        }
    }


    @IBAction func back(_ sender: Any) {
        webView.goBack()
    }
    @IBAction func forward(_ sender: Any) {
        webView.goForward()
    }
    @IBAction func go(_ sender: Any) {
        if let url = URL(string: url.text!){
            webView.load(URLRequest(url: url))
        }
    }
    @IBAction func reload(_ sender: Any) {
        webView.reload()
    }
}

