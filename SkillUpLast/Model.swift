//
//  Model.swift
//  SkillUpLast
//
//  Created by Maha Alassaf on 26/05/1444 AH.
//

import SwiftUI

struct Model: View {
    var body: some View {
        NavigationView{
        ScrollView(.horizontal , showsIndicators: false){
            HStack{
                HStack(spacing: 16) {
                    ForEach(0 ..< 1) { item in
                        GeometryReader { geometry in
                            Image("onboarding11")
                                .resizable()
                            
                            
                                .rotation3DEffect(
                                    Angle(
                                        degrees: Double((geometry.frame(in: .global).minX - 20) / -20)
                                    ),
                                    axis: (x: 0, y: 1, z: 0),
                                    anchor: .center,
                                    anchorZ: 0.0,
                                    perspective: 1.0
                                )
                        }
                        
                        .frame(width: 400 , height: 600)
                        
                    }
                } //end Hsttack 1
            } //end large Hstack
            
            
        } //end scroll
    }
    }
}

struct Model_Previews: PreviewProvider {
    static var previews: some View {
        Model()
    }
}
