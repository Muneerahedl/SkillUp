//
//  SelectButton.swift
//  Skillup-muneerah
//
//  Created by Muneerah Aledaily on 17/12/2022.
//

import SwiftUI

struct SelectButton: View {
    @Binding var isSelected: Bool
     @State var color: Color
     @State var text: String
    var body: some View {
                ZStack {
                    Capsule()
                        .frame (height: 50)
                        .foregroundColor (isSelected ? color : .gray)
                    Text (text)
                    .foregroundColor(.white)}
    }
}

struct SelectButton_Previews: PreviewProvider {
    static var previews: some View {
        SelectButton(isSelected: .constant(false), color: .blue, text: "Option")
    }
}
