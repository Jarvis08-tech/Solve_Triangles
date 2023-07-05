//
//  ExtensionView.swift
//  X.000.000.002
//
//  Created by Develop on 06.04.21.
//

import Foundation

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    func standartTextField(_ name: String) -> some View {
        HStack {
            Text(name).bold()
            Spacer()
            self.keyboardType(.decimalPad)
                .frame(maxWidth: 200)
        }
        .onTapGesture { self.hideKeyboard() }
    }
    
}
#endif


