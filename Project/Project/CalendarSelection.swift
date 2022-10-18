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
	
	private let classScheduleView: ClassScheduleView = ClassScheduleView(
		url: URL(string: "https://my.utexas.edu/UT-Austin-Production/Welcome")!)
	
	private let academicCalendarView: AcademicCalendarView = AcademicCalendarView()
	
	var body: some View {
		NavigationView {
			List {
				ForEach(menuItems) { menuItems in
					NavigationLink(menuItems.title, destination: academicCalendarView)
				}
			}
			.navigationTitle("Calendar")
			.listStyle(.insetGrouped)
		}
    }
}
