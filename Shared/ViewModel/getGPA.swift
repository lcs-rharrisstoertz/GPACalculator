//
//  getGPA.swift
//  GPACalculator
//
//  Created by Harris-Stoertz, Rowan on 2022-03-25.
//

import Foundation

func getGPA (courseList: [Course]) -> Double {
    var GPASum = 0.0
    for Course in courseList {
        GPASum += Course.grade
    }
    let GPA = GPASum/Double(courseList.count)
    return GPA
}
