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
            Text("\(Course.grade)%")
            Text(Course.courseName)
            Spacer()
            if Course.honors {
                Text("AP/Honors")
            }
        }
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(Course: testList.courses[1])
    }
}
