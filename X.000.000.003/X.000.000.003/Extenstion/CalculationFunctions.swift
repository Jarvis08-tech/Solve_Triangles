//
//  CalculationFunctions.swift
//  X.000.000.002
//
//  Created by Develop on 30.04.21.
//

import Foundation

func pythagorasMinus(_ value1: Double, _ value2: Double) -> Double {
    return sqrt(sq(value1) - sq(value2))
}

func pythagorasPlus(_ value1: Double, _ value2: Double, _ value3: Double = 0.0, _ value4: Double = 0.0) -> Double {
    return sqrt(sq(value1) + sq(value2) + sq(value3) + sq(value4))
}

func angleCosineRule(mainLine: Double, left: Double, right: Double) -> Double {
    return acos((sq(left) + sq(right) - sq(mainLine)) / (2 * left * right))
}

func angleSineRule(mainLine: Double, line: Double, angle: Double) -> Double {
    return asin(mainLine * sin(angle) / line)
}

func lineCosineRule(mainAngle: Double, left: Double, right: Double) -> Double {
    return sqrt(sq(left) + sq(right) - 2 * left * right * cos(mainAngle))
}

func lineSineRule(mainAngle: Double, line: Double, angle: Double) -> Double {
    return line * sin(mainAngle) / sin(angle)
}

func thirdAngle(_ angle1: Double, _ angle2: Double) -> Double {
    return 180 - angle1 - angle2
}
