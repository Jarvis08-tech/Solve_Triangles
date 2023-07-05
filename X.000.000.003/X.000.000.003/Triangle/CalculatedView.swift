//
//  CalculatedView.swift
//  X.000.000.003
//
//  Created by Develop on 14.05.21.
//

import SwiftUI

struct CalculatedView: View {
    let triangle: Calculation
    @State var string = ""
    
    var body: some View {
        List {
            Section(header: Text("Name")) {
                GiveNameResult()
            }
            
            PictureView()
            
            Section(header: Text("Solution")) {
                if triangle.alpha * triangle.beta * triangle.gamma == 0 {
                    Text("There is no possible triangle")
                } else {
                    Group {
                        ResultRow(variable: "a", value: triangle.a, unit: "")
                        ResultRow(variable: "b", value: triangle.b, unit: "")
                        ResultRow(variable: "c", value: triangle.c, unit: "")
                        ResultRow(variable: "alpha", value: triangle.alpha, unit: "°")
                        ResultRow(variable: "beta", value: triangle.beta, unit: "°")
                        ResultRow(variable: "gamma", value: triangle.gamma, unit: "°")
                        ResultRow(variable: "perimeter", value: triangle.U(), unit: "")
                        ResultRow(variable: "area", value: triangle.A(), unit: "")
                    }
                }
            }
        }
    }
}

struct CalculatedView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatedView(triangle: Calculation(a: "2", b: "3", alpha: "35"))
    }
}

