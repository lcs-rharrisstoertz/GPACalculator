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
            Text("\(Course.grade)")
                .font(.title)
            Text(Course.courseName)
            if Course.honors {
                Text("Yes")
            } else {
                Text ("No")
            }
        }
        .padding()
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(Course: courseList[1])
    }
}
