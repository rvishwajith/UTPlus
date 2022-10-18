//
//  LongSession.swift
//  Project
//
//  Created by Rohith Vishwajith on 10/18/22.
//

import SwiftUI
import WebKit
import UIKit

struct AcademicCalendarView: UIViewRepresentable {
	
	// var startYear: String, endYear: String
	let url = URL(string: "https://registrar.utexas.edu/calendars/22-23")!
	let delegate = AcademicCalendarDelegate()
	let webView = WKWebView()
 
	func makeUIView(context: Context) -> WKWebView {
		webView.navigationDelegate = delegate
		return webView
	}
 
	func updateUIView(_ webView: WKWebView, context: Context) {
		let request = URLRequest(url: url)
		webView.load(request)
	}
}

class AcademicCalendarDelegate: NSObject, WKNavigationDelegate {
	
	func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
		loadedPage(webView)
	}
	
	func loadedPage(_ webView: WKWebView) {
		
		// webView.evaluateJavaScript("console.log(document.URL); window.onload = (event) => { setInterval(log, 1000); } function log() { console.log('hehe'); }")
		
		webView.evaluateJavaScript("document.URL") { (result, error) in
			if error == nil {
				print("Result: \(result!)")
			}
			else {
				print("Failed: \(error!)")
			}
		}
		
		webView.evaluateJavaScript("document.body.innerHTML = 'Hello There!'")
				
		webView.evaluateJavaScript("document.body.innerHTML") { (result, error) in
			if error == nil {
				print("Inner HTML Result: \(result!)")
			}
			else {
				print("Inner HTML Failed: \(error!)")
			}
		}
	}
}
