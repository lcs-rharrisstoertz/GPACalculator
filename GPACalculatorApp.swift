//
//  GPACalculatorApp.swift
//  Shared
//

import SwiftUI

@main
struct GPACalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(courseList: testList)
            }.navigationTitle("GPA Calculator")
        }
    }
}
