//
//  ResultRow.swift
//  X.000.000.002
//
//  Created by Develop on 02.04.21.
//

import SwiftUI

struct ResultRow: View {
    let variable: String
    let value: Double
    let unit: String
    
    var body: some View {
        HStack {
            Text(variable).bold()
            Spacer()
            Text(unwrapText(value) + unit)
        }
        .onTapGesture { self.hideKeyboard() }
        
    }
}

struct ResultRow_Previews: PreviewProvider {
    static var previews: some View {
        ResultRow(variable: "Länge a", value: 22.2222222, unit: "m")
    }
}
