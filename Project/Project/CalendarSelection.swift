//
//  ContentView.swift
//  Project
//
//  Created by Rohith Vishwajith on 10/18/22.
//

import SwiftUI

struct CalendarSelection: View {
	
	@State var printer: String = "";
	
	private let classScheduleView: ClassScheduleView = ClassScheduleView()
	
	private let menuItems: [MenuSelectionItem] = [
		MenuSelectionItem(title: "Class Schedule"),
		MenuSelectionItem(title: "Long Session 22 - 23"),
		MenuSelectionItem(title: "Sports Events"),
		MenuSelectionItem(title: "Handshake"),
	]
    
	var body: some View {
		
		NavigationView {
			List {
				ForEach(menuItems) { menuItems in
					
					/*
					HStack(alignment: .center) { // Vertical Alignment
						Image(systemName: "calendar")
						VStack(alignment: .leading) { // Horizontal Alignment
							Text(menuItems.title)
						}
					}
					 */
					NavigationLink(menuItems.title, destination: classScheduleView)
				}
			}
			.navigationTitle("Calendars")
			.listStyle(.insetGrouped)
		}
    }
	
	func addItem() {
		
	}
}

struct ClassScheduleView: View {
	
	var body: some View {
		
		Text("Today's Classes")
			.padding()
	}
}

// Fonts:
// Large Title, Title, Headline, Body, Caption.
struct MenuSelectionItem: Identifiable {
	let title: String
	var id: String { title }
}
