//
//  ServicesListView.swift
//  Skillup-muneerah
//
//  Created by Muneerah Aledaily on 13/12/2022.
//

import SwiftUI

struct ServicesListView: View {
    var body: some View {
            ScrollView{
                VStack(spacing : 15){
                    ZStack{
                        Rectangle()
                            .frame(width: 350, height: 200)
                            .foregroundColor(Color("Slightgray"))
                             // .padding(.bottom, 30.0)
                            .cornerRadius(30)
                        
                        
                        
                        HStack{
                            ZStack{
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(Color("Sblue"))
                                HStack{
                                    Image(systemName: "music.note.list")
                                    Text("Music")
                                }
                                .foregroundColor(.white)
                            }
                              
                            
                            VStack(alignment: .leading){
                                Text("Omar Ali")
                                    .foregroundColor(Color("SPurple"))
                                    .font(Font.headline.weight(.bold))
                                HStack{
                                    Text("Profession:")
                                        .fontWeight(.bold)
                                    Text("Piano")
                                }
                                HStack{
                                    Text("Experience:")
                                        .fontWeight(.bold)
                                    Text("12 years")
                                }
                                HStack{
                                    Text("Session Duration:")
                                        .fontWeight(.bold)
                                    Text("2 hours")
                                }
                                HStack{
                                    Text("Tools:")
                                        .fontWeight(.bold)
                                    Text("Provided")
                                }
                                
                                
                                HStack {
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 200, height: 40)
                                            .cornerRadius(30)
                                            .foregroundColor(Color("Slightgray"))
                                
                                        NavigationLink(destination: EditService().navigationBarBackButtonHidden(true)) {
                                            Text("Edit")
                                            //                                        .padding()
                                                .frame(width: 200, height: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                                .background(Color("SGreen"))
                                                .cornerRadius(30)
                                        }
                                    }

                                }
                                
                                
                                
                            }
                            
                        }
                    } //zstack1
                    ZStack{
                        Rectangle()
                            .frame(width: 350, height: 200)
                            .foregroundColor(Color("Slightgray"))
                             // .padding(.bottom, 30.0)
                            .cornerRadius(30)
                        
                        
                        
                        HStack{
                            ZStack{
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(Color("Sblue"))
                                HStack{
                                    Image(systemName: "music.note.list")
                                    Text("Music")
                                }
                                .foregroundColor(.white)
                            }
                              
                            
                            VStack(alignment: .leading){
                                Text("Omar Ali")
                                    .foregroundColor(Color("SPurple"))
                                    .font(Font.headline.weight(.bold))
                                HStack{
                                    Text("Profession:")
                                        .fontWeight(.bold)
                                    Text("Guitar")
                                }
                                HStack{
                                    Text("Experience:")
                                        .fontWeight(.bold)
                                    Text("12 years")
                                }
                                HStack{
                                    Text("Session Duration:")
                                        .fontWeight(.bold)
                                    Text("2 hours")
                                }
                                HStack{
                                    Text("Tools:")
                                        .fontWeight(.bold)
                                    Text("Provided")
                                }
                                
                                
                                HStack {
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 100, height: 40)
                                            .cornerRadius(30)
                                            .foregroundColor(Color("Slightgray"))
                                
                                        NavigationLink(destination: EditService().navigationBarBackButtonHidden(true)) {
                                            Text("Edit")
                                            //                                        .padding()
                                                .frame(width: 200, height: 40)
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                                .background(Color("SGreen"))
                                                .cornerRadius(30)
                                        }
                                    }

                                }
                                
                                
                                
                            }
                            
                        }
                    } //zstack1
                    
                    VStack{
                        ZStack{
                            Rectangle()
                             .frame(width: 350, height: 60)
                               .cornerRadius(20)
                                .foregroundColor(Color("Slightgray"))
                    
                            NavigationLink(destination: AddNewService().navigationBarBackButtonHidden(true)) {
                                Text("Add New Service")
                                    
                                    .frame(width: 350, height: 60)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .background(Color("SGreen"))
                                    .cornerRadius(20)
                                    .padding(160)
                                    
                            }
                            
                        }
                      
                    }
                    Spacer()
                }
                .navigationTitle("Services List")
                .navigationBarTitleDisplayMode(.inline)
               // .toolbarBackground(Color("SPurple"), for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .padding()
                
      //      }
            
                
    }
    }
}

struct ServicesListView_Previews: PreviewProvider {
    static var previews: some View {
        ServicesListView()
    }
}
