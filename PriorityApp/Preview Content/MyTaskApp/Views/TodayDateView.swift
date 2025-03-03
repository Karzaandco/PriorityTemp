//
//  TodayDateView.swift
//  PriorityApp
//
//  Created by Erin Dunlap on 2/27/25.
//

import SwiftUI

struct TodayDateView: View {
    var body: some View {
        NavigationLink(destination: CalendarView(selectedDate: getTodayDate())) {
            Text(getTodayDate())
                .font(.headline)
                .padding()
                .foregroundColor(.blue) // Make it look like a clickable link
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
        }
        .buttonStyle(PlainButtonStyle()) // Removes the default navigation link style
    }

    private func getTodayDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter.string(from: Date())
    }
}

struct TodayDateView_Previews: PreviewProvider {
    static var previews: some View {
        TodayDateView()
    }
}
