//
//  Search.swift
//  SkillUpLast
//
//  Created by Maha Alassaf on 26/05/1444 AH.
//

import SwiftUI

struct Search: View {
    @State var text : String = ""
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass").foregroundColor(Color.ColorG)
            TextField("Search..." , text: $text)
        }
        .font(.headline)
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
