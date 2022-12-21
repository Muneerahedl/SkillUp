//
//  QRFailure.swift
//  timerr
//
//  Created by noura on 22/05/1444 AH.
//

import Foundation
import SwiftUI

struct QRFailureView: View {
    
    var body: some View {
            VStack{
                //purple
                //                .foregroundColor(Color(red: 0.375, green: 0.336, blue: 0.722))
                Text("Sorry!")
                    .font(.system(size: 44, weight: .bold, design: .default))
                    .foregroundColor(Color(red: 0.289, green: 0.667, blue: 0.489))
                Text("Your request was declined")
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(Color(red: 0.375, green: 0.336, blue: 0.722))
                Text("Reason : ")
                
                    .font(.system(size: 14, weight: .bold, design: .default))
                Text("Kindly choose another time slot.")
                    .font(.system(size: 12, weight: .medium, design: .default))
                Spacer()
            }
    }
    
}


struct QRFailure_Previews: PreviewProvider {
    static var previews: some View {
        QRFailureView()
        
    }
}
