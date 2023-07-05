//
//  Calculation.swift
//  X.000.000.003
//
//  Created by Develop on 14.05.21.
//

import Foundation

struct Calculation {
    let a: Double
    let b: Double
    let c: Double
    let alpha: Double
    let beta: Double
    let gamma: Double
    
    init(a: String, b: String, c: String) {
        self.a = unwrapNumber(a)
        self.b = unwrapNumber(b)
        self.c = unwrapNumber(c)
        self.alpha = angleCosineRule(mainLine: self.a, left: self.b, right: self.c)
        self.beta = angleCosineRule(mainLine: self.b, left: self.a, right: self.c)
        self.gamma = thirdAngle(self.alpha, self.beta)
    }
    
    init(a: String, b: String, alpha: String) {
        self.a = unwrapNumber(a)
        self.b = unwrapNumber(b)
        self.alpha = unwrapNumber(alpha)
        self.beta = angleSineRule(mainLine: self.b, line: self.a, angle: self.alpha)
        self.gamma = thirdAngle(self.alpha, self.beta)
        self.c = lineSineRule(mainAngle: self.gamma, line: self.b, angle: self.beta)
    }
    
    init(a: String, b: String, beta: String) {
        self.a = unwrapNumber(a)
        self.b = unwrapNumber(b)
        self.beta = unwrapNumber(beta)
        self.alpha = angleSineRule(mainLine: self.a, line: self.b, angle: self.beta)
        self.gamma = thirdAngle(self.alpha, self.beta)
        self.c = lineSineRule(mainAngle: self.gamma, line: self.b, angle: self.beta)
    }
    
    init(a: String, b: String, gamma: String) {
        self.a = unwrapNumber(a)
        self.b = unwrapNumber(b)
        self.gamma = unwrapNumber(gamma)
        self.c = lineCosineRule(mainAngle: self.gamma, left: self.b, right: self.a)
        self.beta = angleCosineRule(mainLine: self.b, left: self.a, right: self.c)
        self.alpha = thirdAngle(self.gamma, self.beta)
    }
    
    init(a: String, c: String, alpha: String) {
        self.a = unwrapNumber(a)
        self.c = unwrapNumber(c)
        self.alpha = unwrapNumber(alpha)
        self.gamma = angleSineRule(mainLine: self.c, line: self.a, angle: self.alpha)
        self.beta = thirdAngle(self.alpha, self.gamma)
        self.b = lineSineRule(mainAngle: self.beta, line: self.a, angle: self.alpha)
    }
    
    init(a: String, c: String, beta: String) {
        self.a = unwrapNumber(a)
        self.c = unwrapNumber(c)
        self.beta = unwrapNumber(beta)
        self.b = lineCosineRule(mainAngle: self.beta, left: self.a, right: self.c)
        self.alpha = angleCosineRule(mainLine: self.a, left: self.b, right: self.c)
        self.gamma = thirdAngle(self.alpha, self.beta)
    }
    
    init(a: String, c: String, gamma: String) {
        self.a = unwrapNumber(a)
        self.c = unwrapNumber(c)
        self.gamma = unwrapNumber(gamma)
        self.alpha = angleSineRule(mainLine: self.a, line: self.c, angle: self.gamma)
        self.beta = thirdAngle(self.alpha, self.gamma)
        self.b = lineSineRule(mainAngle: self.beta, line: self.a, angle: self.alpha)
    }
    
    init(b: String, c: String, alpha: String) {
        self.b = unwrapNumber(b)
        self.c = unwrapNumber(c)
        self.alpha = unwrapNumber(alpha)
        self.a = lineCosineRule(mainAngle: self.alpha, left: self.b, right: self.c)
        self.beta = angleSineRule(mainLine: self.b, line: self.a, angle: self.alpha)
        self.gamma = thirdAngle(self.alpha, self.beta)
    }
    
    init(b: String, c: String, beta: String) {
        self.b = unwrapNumber(b)
        self.c = unwrapNumber(c)
        self.beta = unwrapNumber(beta)
        self.gamma = angleSineRule(mainLine: self.c, line: self.b, angle: self.beta)
        self.alpha = thirdAngle(self.beta, self.gamma)
        self.a = lineSineRule(mainAngle: self.alpha, line: self.b, angle: self.beta)
    }
    
    init(b: String, c: String, gamma: String) {
        self.b = unwrapNumber(b)
        self.c = unwrapNumber(c)
        self.gamma = unwrapNumber(gamma)
        self.beta = angleSineRule(mainLine: self.b, line: self.c, angle: self.gamma)
        self.alpha = thirdAngle(self.gamma, self.beta)
        self.a = lineSineRule(mainAngle: self.alpha, line: self.c, angle: self.gamma)
    }
    
    init(alpha: String, beta: String, a: String) {
        self.alpha = unwrapNumber(alpha)
        self.beta = unwrapNumber(beta)
        self.gamma = thirdAngle(self.alpha, self.beta)
        self.a = unwrapNumber(a)
        self.b = lineSineRule(mainAngle: self.beta, line: self.a, angle: self.alpha)
        self.c = lineSineRule(mainAngle: self.gamma, line: self.a, angle: self.alpha)
    }
    
    init(alpha: String, beta: String, b: String) {
        self.alpha = unwrapNumber(alpha)
        self.beta = unwrapNumber(beta)
        self.gamma = thirdAngle(self.alpha, self.beta)
        self.b = unwrapNumber(b)
        self.a = lineSineRule(mainAngle: self.alpha, line: self.b, angle: self.beta)
        self.c = lineSineRule(mainAngle: self.gamma, line: self.b, angle: self.beta)
    }
    
    init(alpha: String, beta: String, c: String) {
        self.alpha = unwrapNumber(alpha)
        self.beta = unwrapNumber(beta)
        self.gamma = thirdAngle(self.alpha, self.beta)
        self.c = unwrapNumber(c)
        self.a = lineSineRule(mainAngle: self.alpha, line: self.c, angle: self.gamma)
        self.b = lineSineRule(mainAngle: self.beta, line: self.c, angle: self.gamma)
    }
    
    init(alpha: String, gamma: String, a: String) {
        self.alpha = unwrapNumber(alpha)
        self.gamma = unwrapNumber(gamma)
        self.beta = thirdAngle(self.alpha, self.gamma)
        self.a = unwrapNumber(a)
        self.b = lineSineRule(mainAngle: self.beta, line: self.a, angle: self.alpha)
        self.c = lineSineRule(mainAngle: self.gamma, line: self.a, angle: self.alpha)
    }
    
    init(alpha: String, gamma: String, b: String) {
        self.alpha = unwrapNumber(alpha)
        self.gamma = unwrapNumber(gamma)
        self.beta = thirdAngle(self.alpha, self.gamma)
        self.b = unwrapNumber(b)
        self.a = lineSineRule(mainAngle: self.alpha, line: self.b, angle: self.beta)
        self.c = lineSineRule(mainAngle: self.gamma, line: self.b, angle: self.beta)
    }
    
    init(alpha: String, gamma: String, c: String) {
        self.alpha = unwrapNumber(alpha)
        self.gamma = unwrapNumber(gamma)
        self.beta = thirdAngle(self.alpha, self.gamma)
        self.c = unwrapNumber(c)
        self.a = lineSineRule(mainAngle: self.alpha, line: self.c, angle: self.gamma)
        self.b = lineSineRule(mainAngle: self.beta, line: self.c, angle: self.gamma)
    }
    
    init(beta: String, gamma: String, a: String) {
        self.beta = unwrapNumber(beta)
        self.gamma = unwrapNumber(gamma)
        self.alpha = thirdAngle(self.beta, self.gamma)
        self.a = unwrapNumber(a)
        self.b = lineSineRule(mainAngle: self.beta, line: self.a, angle: self.alpha)
        self.c = lineSineRule(mainAngle: self.gamma, line: self.a, angle: self.alpha)
    }
    
    init(beta: String, gamma: String, b: String) {
        self.beta = unwrapNumber(beta)
        self.gamma = unwrapNumber(gamma)
        self.alpha = thirdAngle(self.beta, self.gamma)
        self.b = unwrapNumber(b)
        self.a = lineSineRule(mainAngle: self.alpha, line: self.b, angle: self.beta)
        self.c = lineSineRule(mainAngle: self.gamma, line: self.b, angle: self.beta)
    }
    
    init(beta: String, gamma: String, c: String) {
        self.beta = unwrapNumber(beta)
        self.gamma = unwrapNumber(gamma)
        self.alpha = thirdAngle(self.beta, self.gamma)
        self.c = unwrapNumber(c)
        self.a = lineSineRule(mainAngle: self.alpha, line: self.c, angle: self.gamma)
        self.b = lineSineRule(mainAngle: self.beta, line: self.c, angle: self.gamma)
    }
    
    func U() -> Double {
        return a + b + c
    }
    
    func A() -> Double {
        return a * b * sin(gamma) / 2
    }
    
}
