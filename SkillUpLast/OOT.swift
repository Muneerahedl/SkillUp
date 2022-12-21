//
//  OOT.swift
//  SkiilUp
//
//  Created by Maha Alassaf on 21/05/1444 AH.
//

import SwiftUI

struct OOT: View {
    @State private var Password =   ""

    var body: some View {
        ZStack{
            VStack{
                Text("OTP Verification").bold()

                Text("please check your Phone to see the Verification code")
                
                Text("OTP code").padding(.trailing ,280).bold()
                HStack(spacing: 40){
                        TextField("", text: $Password)
                            .frame(width: 50 ,height: 50)
                            .border(Color.gray)
                            .background(Color.gray)
                        
                        TextField("", text: $Password)
                            .frame(width: 50 ,height: 50)
                            .border(Color.gray)
                            .background(Color.gray)
                        
                        TextField("", text: $Password)
                            .frame(width: 50 ,height: 50)
                            .border(Color.gray)
                            .background(Color.gray)
                        
                        TextField("", text: $Password)
                            .frame(width: 50 ,height: 50)
                            .border(Color.gray)
                            .background(Color.gray)
                }
                
                
                VStack{
                    HStack{
                        Text("Verify").foregroundColor(.white).bold()
                    }.frame(width: 350 , height: 50)
                    //.background(Color.ColorG)
                        .background(Color.green)
                        .cornerRadius(30)
                }.padding(.top , 50)
                
            }
        }
    }
}

struct OOT_Previews: PreviewProvider {
    static var previews: some View {
        OOT()
    }
}
