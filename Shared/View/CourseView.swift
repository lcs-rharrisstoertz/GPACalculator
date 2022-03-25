//
//  CourseView.swift
//  GPACalculator
//
//  Created by Harris-Stoertz, Rowan on 2022-03-25.
//

import SwiftUI

struct CourseView: View {
    var body: some View {
        HStack {
            Text("AP")
            Text("Course name")
            Text("Grade")
        }
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView()
    }
}
