//
//  ContentView.swift
//  Shared
//
//  Created by Harris-Stoertz, Rowan on 2022-03-25.
//

import SwiftUI

struct ContentView: View {
    var courseList: [Course]
    @State private var newCourseName = ""
    @State private var newCourseGrade = ""
    @State private var newCourseHonors = false
    var body: some View {
        Form {
            List (courseList) { Course in
                CourseView(Course: Course)
            }
            HStack {
                TextField ("Grade", text: $newCourseGrade)
                TextField ("Course name", text: $newCourseName)
                VStack {
                    Text("AP/Honors")
                    Picker ("AP/Honors", selection: $newCourseHonors) {
                        Text("Yes").tag(true)
                        Text("No").tag(false)
                    }.pickerStyle(SegmentedPickerStyle())
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(courseList: courseList)
    }
}
