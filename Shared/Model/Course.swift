//
//  Course.swift
//  GPACalculator
//

import Foundation

class Course: Identifiable, ObservableObject {
    var id = UUID()
    var honors: Bool
    var courseName: String
    var grade: Double
    
    internal init(id: UUID = UUID(), honors: Bool, courseName: String, grade: Double) {
        self.id = id
        self.honors = honors
        self.courseName = courseName
        self.grade = grade
    }
}

let testData = [
    Course(honors: true, courseName: "Math", grade: 70),
    Course(honors: false, courseName: "English", grade: 60),
    Course(honors: false, courseName: "Science", grade: 75)
]
