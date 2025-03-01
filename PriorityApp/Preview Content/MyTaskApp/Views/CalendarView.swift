//
//  CalendarView.swift
//  PriorityApp
//
//  Created by Erin Dunlap on 2/27/25.
//

import SwiftUI

struct CalendarView: View {
    var selectedDate: String

    var body: some View {
        VStack {
            Text("Calendar View Here: \(selectedDate)")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            // Implement the Calendar here
            // (note to self) maybe find easier way than making custom calendar

            Spacer()
        }
        .navigationTitle("Calendar")
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView(selectedDate: "February 27, 2025")
    }
}
