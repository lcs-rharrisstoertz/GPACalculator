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
    @State private var newCourseGrade = 0.0
    @State private var newCourseHonors = false
    @State private var GPA = 0.0
    @State private var weighted = false
    @State private var showAPOnly = false
    var body: some View {
        Form {
            Section ("Courses") {
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
            }
            Section ("Add Course") {
                HStack {
                    Text("Grade")
                        .fontWeight(.light)
                    Slider (value: $newCourseGrade, in: 0.0...100.0,  label: {Text("Grade")}, minimumValueLabel: {Text("0")}, maximumValueLabel: {Text("100")})
                    Text("\(String(format: "%.1f", newCourseGrade))%")
                }
                HStack {
                    Text("Course")
                        .fontWeight(.light)
                    TextField ("Course name", text: $newCourseName)
                }
                HStack {
                    Text("AP/Honors")
                        .fontWeight(.light)
                    Toggle("", isOn: $newCourseHonors)
                }
                Button("Add Course") {
                    courseList.courses.append(Course(honors: newCourseHonors, courseName: newCourseName, grade: newCourseGrade))
                }
            }
            Section ("Calculate GPA") {
                Toggle("Weighted", isOn: $weighted)
                Button("Calculate GPA") {
                    GPA = getGPA(courseList: courseList.courses, weighted: weighted)
                }
                Text("Your GPA is \(String(format: "%.2f", GPA))")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(courseList: testList)
    }
}
