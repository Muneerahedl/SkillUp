//
//  ChooseTeach.swift
//  SkillUpLast
//
//  Created by Maha Alassaf on 26/05/1444 AH.
//

import SwiftUI

struct ChooseTeach: View {
    @State var ArraySport : [Learner] =
    [
        Learner(Image: "Yoga", Title: "Yoga"),
        Learner(Image: "Swimming", Title: "Swimming"),
        Learner(Image: "Skating", Title: "Skating")
    ]
    
    var body: some View {
        
        VStack{
            VStack{
                ForEach(ArraySport) {
                    Learner in LearnerView(Learner: Learner)
                }
            }
            
        }
    }
}

struct ChooseTeach_Previews: PreviewProvider {
    static var previews: some View {
        ChooseTeach()
    }
}
