//
//  GiveNameResult.swift
//  X.000.000.002
//
//  Created by Develop on 17.04.21.
//

import SwiftUI

struct GiveNameResult: View {
    @State var string = ""
    
    var body: some View {
        HStack {
            TextField("e.g. Triangle 1a", text: $string)
        }
        .onTapGesture { self.hideKeyboard() }
    }
}

struct GiveNameResult_Previews: PreviewProvider {
    static var previews: some View {
        GiveNameResult()
    }
}
