//
//  LogIn1.swift
//  timerr
//
//  Created by noura on 22/05/1444 AH.
//

import SwiftUI
import CloudKit

struct SugnUp: View {
    @State  var Username: String=""
    @State  var Email: String=""
    @State  var phone: String=""
    @State  var password: String=""
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
                
                HStack{
                    Image(systemName: "envelope.fill")
                        .padding()
                    TextField("Email Address" , text: $Email)
                }
                .frame(width: 320.0, height: 50.0)
                .foregroundColor(Color.gray)
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray, lineWidth:1))
               
                HStack{
                    Image(systemName: "person.fill")
                        .padding()
                    TextField("Your Name" , text: $password)
                    
                }
                .frame(width: 320.0, height: 50.0)
                .foregroundColor(Color.gray)
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray, lineWidth:1))
                
                HStack{
                   
                    Image(systemName: "phone.fill")
                        .padding()
                    TextField("Phone Number" , text: $password)

                }
                .frame(width: 320.0, height: 50.0)
                .foregroundColor(Color.gray)
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray, lineWidth:1))
                
                
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

                
//                TextField("Email Address" , text: $Email)
//                    .textFieldStyle(.roundedBorder)
//                    .padding(.all)
//                    .padding(.leading)
//                    .padding(.trailing)
//                TextField("Your Name" , text: $Username)
//                    .textFieldStyle(.roundedBorder)
//                    .padding(.all)
//                    .padding(.leading)
//                    .padding(.trailing)
//                TextField("Phone Number" , text: $phone)
//                    .textFieldStyle(.roundedBorder)
//                    .padding(.all)
//                    .padding(.leading)
//                    .padding(.trailing)
//                TextField("Password" , text: $password)
//                    .textFieldStyle(.roundedBorder)
//                    .padding(.all)
//                    .padding(.leading)
//                    .padding(.trailing)
                
                //Sign up
                Button(action: {}){
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 320 , height: 50)
                            .foregroundColor(Color(red: 0.289, green: 0.667, blue: 0.489))
                        NavigationLink(destination: LearnerProfile(vm: LearnerListViewModel(container: CKContainer.default())))
                        {
                            Text("Sign Up")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                }
                    

                Text("Already Have an Account? ")
                
                    .font(.system(size: 14, weight: .medium, design: .default))
                    .foregroundColor(.gray)
                Button(action: {}){
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 120 , height: 50)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.92))
                        NavigationLink(destination: SignIn()){
                            Text("Sign in")
                                .foregroundColor(Color(red: 0.289, green: 0.667, blue: 0.489))
                        }
                    }
                }
//                Button(action: {}){
//                    ZStack{
//
//                        Text("Forgot Your Password?")
//                            .foregroundColor(.gray)
//                            .font(.system(size: 14, weight: .medium, design: .default))
//                    }
//                }
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            }
            

        } //end ZStack
    }
}

//struct LogIn1_Previews: PreviewProvider {
struct SugnUp_Previews: PreviewProvider {
    static var previews: some View {
        SugnUp()
    }
}
