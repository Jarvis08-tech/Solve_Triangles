//
//  PictureView.swift
//  X.000.000.002
//
//  Created by Develop on 17.04.21.
//

import SwiftUI

struct PictureView: View {
    var body: some View {
        HStack {
            Image("Picture")
                .resizable()
                .frame(width: 300, height: 150)
            .cornerRadius(20.0)
        }
        .onTapGesture {
            hideKeyboard()
        }
    }
}

struct PictureView_Previews: PreviewProvider {
    static var previews: some View {
        PictureView()
    }
}
