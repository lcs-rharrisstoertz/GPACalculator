//
//  getGPA.swift
//  GPACalculator
//
//  Created by Harris-Stoertz, Rowan on 2022-03-25.
//

import Foundation

func getGPA (courseList: [Course], weighted: Bool) -> Double {
    var GPASum = 0.0
    for Course in courseList {
        switch Course.grade {
        case 90... :
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
        case 57...59 :
            GPASum += 1.3
        case 53...56 :
            GPASum += 1.0
        case 50...52 :
            GPASum += 0.7
        case ..<49 :
            GPASum += 0
        default:
            break
        }
        if weighted && Course.honors {
            GPASum += 1.0
        }
    }
    let GPA = GPASum/Double(courseList.count)
    return GPA
}
