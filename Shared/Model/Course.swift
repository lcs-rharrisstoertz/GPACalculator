//
//  Course.swift
//  GPACalculator
//
//  Created by Harris-Stoertz, Rowan on 2022-03-25.
//

import Foundation

struct Course: Identifiable {
    var id = UUID()
    var honors: Bool
    var courseName: String
    var grade: Double
}

let testData = [
Course(honors: true, courseName: "Math", grade: 70),
Course(honors: false, courseName: "English", grade: 60),
Course(honors: false, courseName: "Science", grade: 75)
]
