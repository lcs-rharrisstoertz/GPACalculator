//
//  ContentView.swift
//  Shared
//
//  Created by Harris-Stoertz, Rowan on 2022-03-25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var courseList: courseList
    @State private var newCourseName = ""
    @State private var newCourseGrade = ""
    @State private var newCourseHonors = false
    var body: some View {
        Form {
            ForEach (courseList.courses) { Course in
                CourseView(Course: Course)
            }
            HStack {
                TextField ("Grade", value: $newCourseGrade, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                TextField ("Course name", text: $newCourseName)
                VStack {
                    Text("AP/Honors")
                    Picker ("AP/Honors", selection: $newCourseHonors) {
                        Text("Yes").tag(true)
                        Text("No").tag(false)
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Button("+") {
                    courseList.courses.append(Course(honors: newCourseHonors, courseName: newCourseName, grade: Double(newCourseGrade)!))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(courseList: testList)
    }
}
