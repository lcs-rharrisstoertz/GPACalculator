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
    @State private var GPA = 0.0
    @State private var weighted = false
    @State private var showAPOnly = false
    var body: some View {
        Form {
            Toggle ("Show AP/Honors Only", isOn: $showAPOnly)
            List {
                ForEach (courseList.courses) { Course in
                    if showAPOnly {
                        if Course.honors {
                            CourseView(Course: Course)
                        }
                    } else {
                        CourseView(Course: Course)
                    }
                }
            }
            HStack {
                TextField ("Grade", value: $newCourseGrade, formatter: NumberFormatter())
                    .keyboardType(.decimalPad)
                TextField ("Course name", text: $newCourseName)
                Toggle("AP/Honors", isOn: $newCourseHonors)
                Button("Add") {
                    courseList.courses.append(Course(honors: newCourseHonors, courseName: newCourseName, grade: Double(newCourseGrade)!))
                }
            }
            HStack {
                Button("Calculate GPA") {
                    GPA = getGPA(courseList: courseList.courses, weighted: weighted)
                }
                Toggle("Weighted", isOn: $weighted)
            }
            Text("Your GPA is \(GPA)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(courseList: testList)
    }
}
