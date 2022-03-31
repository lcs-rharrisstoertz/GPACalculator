//
//  CourseView.swift
//  GPACalculator
//

import SwiftUI

struct CourseView: View {
    var Course: Course
    var body: some View {
        HStack {
            Text("\(String(format: "%.1f", Course.grade))%")
                .font(.title2)
                .fontWeight(.semibold)
            Text(Course.courseName)
            Spacer()
            if Course.honors {
                Text("AP/Honors")
                    .fontWeight(.light)
            }
        }
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(Course: testList.courses[1])
    }
}
