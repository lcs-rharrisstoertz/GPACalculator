//
//  CourseStore.swift
//  GPACalculator
//
//  Created by Harris-Stoertz, Rowan on 2022-03-25.
//

import Foundation

class courseList: ObservableObject {
    @Published var courses: [Course]
    
    init(courses: [Course]) {
        self.courses = []
    }
}

let testList = courseList(courses: testData)
