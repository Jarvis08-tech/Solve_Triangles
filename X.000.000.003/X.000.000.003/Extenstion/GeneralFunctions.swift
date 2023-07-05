//
//  GeneralFunctions.swift
//  X.000.000.002
//
//  Created by Develop on 09.04.21.
//

import Foundation

func generalConditions(_ value: [String]) -> Bool {
    for v in value {
        guard let a = Double(v),
           a > 0
        else { return false }
    }
    return true
}

func angleConditions(_ angle: [String]) -> Bool {
    var count: Double = 0
    for a in angle {
        if let b = Double(a),
           b > 0 {
            count += b
        } else { return false }
    }
    if count < 180 {
        return true
    }
    return false
}

func oneBiggerThanTwo(_ value1: String, _ value2: String) -> Bool {
    if let a = Double(value1),
       let b = Double(value2),
       a > b
    { return true } else { return false }
}

func unwrapNumber(_ value: String) -> Double {
    return Double(value) ?? 0.0
}

func unwrapText(_ value: Double) -> String {
    if value >= 1000000000000000 {
        return String(format: "%.4f", value/1000000000000000) + "e15"
    } else if value >= 1000000000000 {
        return String(format: "%.4f", value/1000000000000) + "e12"
    } else if value >= 1000000000 {
        return String(format: "%.4f", value/1000000000) + "e9"
    } else if value >= 1000000 {
        return String(format: "%.4f", value/1000000) + "e6"
    } else if value >= 1000 {
        return String(format: "%.4f", value/1000) + "e3"
    } else if value <= 0.001 && value > 0 && value > 0.000001 {
        return String(format: "%.4f", value*1000) + "e-3"
    } else if value <= 0.000001 && value > 0 && value > 0.000000001 {
        return String(format: "%.4f", value*1000000) + "e-6"
    } else if value <= 0.000000001 && value > 0 && value > 0.000000000001 {
        return String(format: "%.4f", value*1000000000) + "e-9"
    } else if value <= 0.000000000001 && value > 0 && value > 0.000000000000001 {
        return String(format: "%.4f", value*1000000000000) + "e-12"
    } else if value <= 0.000000000000001 && value > 0 {
        return String(format: "%.4f", value*1000000000000) + "e-15"
    }
    return String(format: "%.4f", value)
    
}

func sin(_ angle: Double) -> Double {
    var value = angle
    while value > 360 {
        value -= 360
    }
    if value > 270 {
        value = 360 - value
        return -Foundation.sin(value  * .pi / 180)
    } else if value > 180 {
        value = value - 180
        return -Foundation.sin(value  * .pi / 180)
    } else if value > 90 {
        value = 180 - value
        return Foundation.sin(value  * .pi / 180)
    }
    return Foundation.sin(value  * .pi / 180)
}

func cos(_ angle: Double) -> Double {
    var value = angle
    while value > 360 {
        value -= 360
    }
    if value > 270 {
        value = 360 - value
        return Foundation.cos(value  * .pi / 180)
    } else if value > 180 {
        value = value - 180
        return -Foundation.cos(value  * .pi / 180)
    } else if value > 90 {
        value = 180 - value
        return -Foundation.cos(value  * .pi / 180)
    }
    return Foundation.cos(value  * .pi / 180)
}

func asin(_ angle: Double) -> Double {
    if angle > 0 && angle < 1 {
        return Foundation.asin(angle) * 180 / .pi
    }
    return 0
}

func acos(_ angle: Double) -> Double {
    var value = angle
    if value > 0 && value < 1 {
        return Foundation.acos(value) * 180 / .pi
    }
    if value < 0 && value > -1 {
        value = -value
        value = Foundation.acos(value) * 180 / .pi
        return 180-value
    }
    if value == 0 {
        return 90.0
    }
    return 0
}

func sq(_ value: Double) -> Double {
    return pow(value, 2.0)
}
