//
//  onBoarding.swift
//  timerr
//
//  Created by noura on 23/05/1444 AH.
import SwiftUI

struct onBoarding: View {
// let myImage : [Image] = [ Image("onboarding11"),Image("onboarding2"),Image("onboarding3") ]

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
                //------
                HStack(spacing: 16) {
                    ForEach(0 ..< 1) { item in
                        GeometryReader { geometry in
                            Image("onboarding2")
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
                } //end Hsttack 2
                
                HStack(spacing: 16) {
                    ForEach(0 ..< 1) { item in
                        GeometryReader { geometry in
                            Image("onboarding3")
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
                } //end Hsttack 3
                
                HStack(spacing: 16) {
                    ZStack{
                        ForEach(0 ..< 1) { item in
                            GeometryReader { geometry in
                                Image("onboarding4")
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
                            .frame(width: 400 , height: 400)
                            .padding(.bottom, 200.0)
                            
                            NavigationLink(destination: SignIn()){
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 320 , height: 50)
                                        .foregroundColor(Color(red: 0.289, green: 0.667, blue: 0.489))
                                        .padding(.top, 490.0)
                                    Text("Learner")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .medium, design: .default))
                                        .padding(.top, 490)
                                }
                            }
                            
                            NavigationLink(destination: SignIn2()){
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 8)
                                            .frame(width: 320 , height: 50)
                                            .foregroundColor(Color(red: 0.289, green: 0.667, blue: 0.489))
                                            .padding(.top, 350.0)
                                        Text("Trainer")
                                            .foregroundColor(.white)
                                            .font(.system(size: 20, weight: .medium, design: .default))
                                            .padding(.top, 350.0)
                                        
                                    }
                                }
                            
                        }
                      //  Button(action: {}){
                       // NavigationLink(destination: Home()){
                            VStack{
                                //Gray
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 120 , height: 30)
                                    .foregroundColor(.white)
                                //Word
                                NavigationLink(destination: Home()){
                                    Text("Continue as a guest")}
                                    .foregroundColor(Color(red: 0.289, green: 0.667, blue: 0.489))
                                    .padding(.top, 650)
                                // }
                            //}
                               // .padding(.top, 650)
                          
                        }
                    }
                    
                } //end Hsttack 4
            } //end large Hstack
            
            
        } //end scroll
    }
        
    } //end view
}

struct onBoarding_Previews: PreviewProvider {
    static var previews: some View {
        onBoarding()
    }
}



//(my code)_________________________________________________
//            VStack(spacing: 10){
//                Button("Skip"){}
//                    .foregroundColor(Color(red: 0.289, green: 0.667, blue: 0.489))
//                    .bold()
//                    .padding(.bottom, 100.0)
//                    .padding(.leading, 250.0)
//                Image("onboarding11")
//                    .resizable()
//                    .frame(width: 400 , height: 550)
//                //--------------------------------------------
//                //Image("onboarding1")
//                //            .resizable()
//                //            .frame(width: 400 , height: 330)
//                //        Text("Find a trainer who gives you confidence")
//                //            .font(.system(size: 16, weight: .medium, design: .default))
//                //
//                //        Text("Determine your trainer and set your appointments with professional trainers")
//                //
//            }
