//
//  CourseView.swift
//  GPACalculator
//
//  Created by Harris-Stoertz, Rowan on 2022-03-25.
//

import SwiftUI

struct CourseView: View {
    var Course: Course
    var body: some View {
        HStack {
            if Course.honors {
                Text("AP/Honors")
            } else {
                Text ("Not AP/Honors")
            }
            Text(Course.courseName)
            Text("\(Course.grade)")
        }
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(Course: courseList[1])
    }
}
