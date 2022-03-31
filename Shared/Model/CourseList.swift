//
//  CourseStore.swift
//  GPACalculator
//

import Foundation

class courseList: ObservableObject {
    @Published var courses: [Course]
    
    init(courses: [Course]) {
        self.courses = courses
    }
}

let testList = courseList(courses: testData)
