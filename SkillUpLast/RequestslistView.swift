//
//  RequestslistView.swift
//  Skillup-muneerah
//
//  Created by Muneerah Aledaily on 13/12/2022.
//

import SwiftUI

struct RequestslistView: View {
    var body: some View {
            ScrollView{
                VStack(spacing : 15){
                    ZStack{
                        Rectangle()
                            .frame(width: 350, height: 240)
                            .foregroundColor(Color("Slightgray"))
                            .cornerRadius(30)
                        
                        
                        HStack{
                            VStack{
                                Image("Image2")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .clipShape(Circle())
                                Rectangle()
                                    .frame(width: 10, height: 120)
                                    .foregroundColor(Color("Slightgray"))
                            }
                           // Spacer()
                            
                            VStack(alignment: .leading){
                                Text("Nouf Sultan")
                                    .foregroundColor(Color("SPurple"))
                                    .font(Font.title2.weight(.bold))
                                  
                                    .padding(.top)
                                   // .padding(.bottom)
                                HStack{
                                    Text("Occupation:")
                                        .fontWeight(.bold)
                                    Text("student")
                                }
                                HStack{
                                    Text("Time:")
                                        .fontWeight(.bold)
                                    Text("8:00 p.m")
                                }
                                HStack{
                                    Text("Date:")
                                        .fontWeight(.bold)
                                    Text("Dec 15, 2022")
                                }
                                HStack{
                                    Text("Number of Attendees:")
                                        .fontWeight(.bold)
                                    Text("2")
                                }
                                HStack{
                                    Text("Location:")
                                        .fontWeight(.bold)
                                    Text("BeeHub")
                                }
                                HStack{
                                    Text("Session:")
                                        .fontWeight(.bold)
                                    Text("Piano")
                                }
                                
                                HStack {
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 100, height: 40)
                                            .cornerRadius(30)
                                            .foregroundColor(Color("Slightgray"))
                                        Rectangle()
                                            .frame(width: 103, height: 43)
                                            .cornerRadius(30)
                                            .foregroundColor(Color("SGreen"))
                                        
                                        NavigationLink(destination: RequestslistView().navigationBarBackButtonHidden(true)) {
                                            Text("Approve")
                                                .frame(width: 100, height: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                                                .fontWeight(.bold)
                                                .foregroundColor(Color("SGreen"))
                                                .background(Color("Slightgray"))
                                                .cornerRadius(30)
                                        }
                                    }
                                  
                                    HStack {
                                        ZStack{
                                            Rectangle()
                                                .frame(width: 100, height: 40)
                                                .cornerRadius(30)
                                                .foregroundColor(Color("Slightgray"))
                                            Rectangle()
                                                .frame(width: 103, height: 43)
                                                .cornerRadius(30)
                                                .foregroundColor(Color("Sred"))
                                            
                                            NavigationLink(destination: RequestslistView().navigationBarBackButtonHidden(true)) {
                                                Text("Decline")
                                                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color("Sred"))
                                                    .background(Color("Slightgray"))
                                                
                                                    .cornerRadius(20)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        
                    } //zstack1
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 350, height: 230)
                            .foregroundColor(Color("Slightgray"))
                        //          .padding(.top, 30.0)
                            .cornerRadius(30)
                        
                        
                        HStack{
                            
                            
                            VStack{
                                Image("Image3")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .clipShape(Circle())
                                Rectangle()
                                    .frame(width: 10, height: 120)
                                    .foregroundColor(Color("Slightgray"))
                            }
                            VStack(alignment: .leading){
                                Text("Khalid Moh")
                                    .foregroundColor(Color("SPurple"))
                                    .font(Font.title2.weight(.bold))
                                HStack{
                                    Text("Occupation:")
                                        .fontWeight(.bold)
                                    Text("Teacher")
                                }
                                HStack{
                                    Text("Time:")
                                        .fontWeight(.bold)
                                    Text("10:00 p.m")
                                }
                                HStack{
                                    Text("Date:")
                                        .fontWeight(.bold)
                                    Text("Dec 3, 2022")
                                }
                                HStack{
                                    Text("Number of Attendees:")
                                        .fontWeight(.bold)
                                    Text("1")
                                }
                                HStack{
                                    Text("Location:")
                                        .fontWeight(.bold)
                                    Text("Home")
                                }
                                HStack{
                                    Text("Session:")
                                        .fontWeight(.bold)
                                    Text("Guitar")
                                }
                                
                                HStack {
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 200, height: 40)
                                            .cornerRadius(30)
                                            .foregroundColor(Color("Slightgray"))
                                        Rectangle()
                                            .frame(width: 203, height: 43)
                                            .cornerRadius(30)
                                            .foregroundColor(Color("SGreen"))
                                        

                                        NavigationLink(destination: RequestslistView().navigationBarBackButtonHidden(true)) {
                                            Text("Show session details")
                                                .frame(width: 200, height: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                                .background(Color("SGreen"))
                                                .cornerRadius(30)
//                                                .frame(width: 200, height: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
//                                                .fontWeight(.bold)
//                                                .foregroundColor(Color("Sblue"))
//                                                .background(Color("Slightgray"))
//                                                .cornerRadius(30)
                                        }
                                    }
//                                    HStack {
//                                        ZStack{
//                                            Rectangle()
//                                                .frame(width: 100, height: 40)
//                                                .cornerRadius(30)
//                                                .foregroundColor(Color("Slightgray"))
//                                            Rectangle()
//                                                .frame(width: 103, height: 43)
//                                                .cornerRadius(30)
//                                                .foregroundColor(Color("Sred"))
//
//                                            NavigationLink(destination: SettingPage().navigationBarBackButtonHidden(true)) {
//                                                Text("Decline")
//                                                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
//                                                    .fontWeight(.bold)
//                                                    .foregroundColor(Color("Sred"))
//                                                    .background(Color("Slightgray"))
//
//                                                    .cornerRadius(20)
//                                            }
//                                        }
//                                    }
                                }
                                
                                
                                
                            }
                            
                        }
                    } //zstack
                    Spacer()
                }
                .navigationTitle("Bookings & Requests")
              .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(.visible, for: .navigationBar)
                
                
                
                .padding()
                
            } .navigationBarHidden(true)
                
    }
    }
//}

struct RequestslistView_Previews: PreviewProvider {
    static var previews: some View {
        RequestslistView()
    }
}
