//
//  ContentView.swift
//  Shared
//
//  Created by Harris-Stoertz, Rowan on 2022-03-25.
//

import SwiftUI

struct ContentView: View {
    var courseList: [Course]
    var body: some View {
        List {
            ForEach (courseList) { Course in
                CourseView(Course: Course)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(courseList: courseList)
    }
}
