//
//  SignIn.swift
//  timerr
//
//  Created by noura on 23/05/1444 AH.
//

import SwiftUI

struct SignIn2: View {
    @State  var Username: String=""
    @State  var Email: String=""
    @State  var phone: String=""
    @State  var password: String=""
    
    @State private var searchText = ""

    var body: some View {
    
        ZStack{
            
            //        Rectangle()
            //            .foregroundColor(Color(red: 0.375, green: 0.336, blue: 0.722))
            //            .frame(width: 500 , height: 400)
            //       .padding(.bottom,480)
            //
            //            RoundedRectangle(cornerRadius: 25)
            //                .foregroundColor(.white)
            //                .frame(width: 400 , height: 200)
            
            VStack(spacing : 25){
                Image("logoSkillUp")
                Text("Welcome Back!")
                    .font(.title)
                
                HStack{
                    Image(systemName: "envelope.fill")
                        .padding()
                    TextField("Email Address or Phone Number" , text: $Email)
                }
                .frame(width: 320.0, height: 50.0)
                .foregroundColor(Color.gray)
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray, lineWidth:1))
//                    .textFieldStyle(.roundedBorder)
//                    .padding(.all)
//                    .padding(.leading)
//                    .padding(.trailing)
                
                
                HStack{
                    Image(systemName: "lock.fill")
                        .padding()
                    TextField("Password" , text: $password)
                    Image(systemName: "eye.slash.fill")
                        .padding()
                }
                .frame(width: 320.0, height: 50.0)
                .foregroundColor(Color.gray)
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray, lineWidth:1))
//
//
//
//                    .textFieldStyle(.roundedBorder)
//                    .padding(.all)
//                    .padding(.leading)
//                    .padding(.trailing)
                
                //Sign up
                NavigationLink(destination: TabeView()){
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 320 , height: 50)
                            .foregroundColor(Color(red: 0.289, green: 0.667, blue: 0.489))
                        Text("Sign In")
                            .foregroundColor(.white)
                            .bold()
                    }
                }
                //                    Spacer()
                
                Text("Don't Have an Account? ")
                
                    .font(.system(size: 14, weight: .medium, design: .default))
                    .foregroundColor(.gray)
                NavigationLink(destination: SugnUp2()){
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 140 , height: 50)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.92))
                        Text("Sign Up")
                            .foregroundColor(Color(red: 0.289, green: 0.667, blue: 0.489))
                        
                    }
                }
                
                Button(action: {}){
                    ZStack{
                        
                        Text("Forgot Your Password?")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .medium, design: .default))
                        
                    }
                }
                
            }
            .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            
        }
        //end ZStack
        
    }
    }
//}

struct SignIn2_Previews: PreviewProvider {
    static var previews: some View {
        SignIn2()
    }
}
