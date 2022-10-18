import SwiftUI
import WebKit

// Fonts: Large Title, Title, Headline, Body, Caption.
struct MenuSelectionItem: Identifiable {
	let title: String
	var id: String { title }
}

struct CalendarSelection: View {
	
	private let menuItems: [MenuSelectionItem] = [
		MenuSelectionItem(title: "Class Schedule"),
		MenuSelectionItem(title: "Academic Calendar"),
		MenuSelectionItem(title: "Sports Calendar"),
		MenuSelectionItem(title: "Handshake Events"),
	]
	private let classScheduleView: ClassScheduleWebView = ClassScheduleWebView(url: URL(string: "https://my.utexas.edu/UT-Austin-Production/Welcome")!)
	
	var body: some View {
		NavigationView {
			List {
				ForEach(menuItems) { menuItems in
					NavigationLink(menuItems.title, destination: classScheduleView)
				}
			}
			.navigationTitle("Calendar")
			.listStyle(.insetGrouped)
		}
    }
}

struct ClassScheduleView: View {
	var body: some View {
		Text("Today's Classes")
			.padding()
	}
}
