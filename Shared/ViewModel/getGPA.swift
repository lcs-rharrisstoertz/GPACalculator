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
        switch Course.grade {
        case 90...100 :
            GPASum += 4.0
        case 85...89 :
            GPASum += 3.9
        case 80...84 :
            GPASum += 3.7
        case 77...79 :
            GPASum += 3.3
        case 73...76 :
            GPASum += 3.0
        case 70...72 :
            GPASum += 2.7
        case 67...69 :
            GPASum += 2.3
        case 63...66 :
            GPASum += 2.0
        case 60...62 :
            GPASum += 1.7
            GPASum += 4.0
        default:
            GPASum += 2.0
        }
    }
    let GPA = GPASum/Double(courseList.count)
    return GPA
}
