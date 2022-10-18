import SwiftUI
import UIKit
import WebKit

import SwiftUI
import WebKit
 
struct ClassScheduleView: UIViewRepresentable {
 
	var url: URL
 
	func makeUIView(context: Context) -> WKWebView {
		return WKWebView()
	}
 
	func updateUIView(_ webView: WKWebView, context: Context) {
		let request = URLRequest(url: url)
		webView.load(request)
	}
}
